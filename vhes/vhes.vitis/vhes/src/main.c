#include <unistd.h>
#include "netif/xadapter.h"
#include "platform_config.h"
#include "xil_printf.h"
#include "lwip/init.h"
#include "lwip/inet.h"
#include "dma_intr.h"
#include "reset.h"
#include "interrupt.h"
#include "lwipopts.h"
#include "xlwipconfig.h"
#include "lwip/tcp.h"
#include "lwip/ip_addr.h"
#include "lwip/inet.h"
#include "lwip/sockets.h"
#include "lwip/sys.h"

/* 缓冲区大小设置 */
#define THREAD_STACKSIZE        1024                // 任务堆栈大小 
#define HEVC_BS_CACHE_SIZE      5 * 1024 * 1024     // 码流缓冲区大小（单位：字节）
#define HEVC_BS_CACHE_NUMS      30                  // 码流缓冲区数量
#define TCP_TRANS_CHCHE_SIZE    4096                // TCP 传输缓冲区大小（单位：字节）

/* IP 相关设置 */
#define DEFAULT_IP_ADDRESS	    "192.168.1.10"      // 本机 IP
#define DEFAULT_IP_MASK		    "255.255.255.0"     // 掩码
#define DEFAULT_GW_ADDRESS	    "192.168.1.1"       // 网关
#define TCP_SERVER_IP_ADDRESS   "192.168.1.100"     // TCP 服务器 IP
#define TCP_CONN_PORT           1896                // TCP 连接端口号

/* 数据缓冲区 */
u32 HevcBsCachePtrReceiveIndex;                     // 接收缓存索引（正在接收中）
u32 HevcBsCachePtrTransmitIndex;                    // 发送缓存索引（等待发送中）
u32 HevcBsCachePtr[HEVC_BS_CACHE_NUMS];             // HEVC 码流缓冲区

/* DMA 句柄 */ 
XScuGic Intc;
XAxiDma AxiDma;

/* DMA 标志位 */  
extern int Error;                                   // DMA 接收出错标志
extern int RxDone;                                  // DMA 接收完成标志

int socket;
struct netif server_netif;

void init_sys();
void init_network();
void init_tcp_connection();
void init_tcp_socket();
void assign_default_ip(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw);
void init_dma_transmit(XAxiDma* DMAPtr, XScuGic* IntcInstancePtr);

void dma_transmit_thread(void* p);
void tcp_transmit_thread(void* p);

int main()
{
    // 初始化系统
    init_sys();
	
    sys_thread_new("dma_transmit_thread", dma_transmit_thread, 0, THREAD_STACKSIZE, DEFAULT_THREAD_PRIO);
    sys_thread_new("tcp_transmit_thread", tcp_transmit_thread, 0, THREAD_STACKSIZE, DEFAULT_THREAD_PRIO);
	vTaskStartScheduler();

    // 复位 PL
    reset_pl();

	return 0;
}

/**
 * @brief  初始化系统  
 * @return *
 */
void init_sys()
{
    // 初始化 DMA 传输
    init_dma_transmit(&AxiDma, &Intc);

    // 初始化码率缓冲区
    HevcBsCachePtrReceiveIndex  = 0;
    HevcBsCachePtrTransmitIndex = 0;
    for(int i = 0; i < HEVC_BS_CACHE_NUMS; i++)
    {
        HevcBsCachePtr[i] = RX_BUFFER_BASE + HEVC_BS_CACHE_SIZE * i; 
    }
    
    // 初始化 TCP 连接
    init_tcp_connection();
}


/**
 * @brief 初始化网络配置 
 * @return *
 */
void init_network()
{
    // 初始化 LWIP
	lwip_init();
    // 设置网卡 MAC 地址（此地址在局域网中应唯一）
	u8_t mac_ethernet_address[] = { 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };
	// 添加网络接口
	if (!xemac_add(&server_netif, NULL, NULL, NULL, mac_ethernet_address, PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\r\n");
		return;
	}
	// 初始化网络接口
	netif_set_default(&server_netif);
    // 启用网络接口
	netif_set_up(&server_netif);
	// 启动网卡接收线程
    // 将线程监听网卡并将接收到的数据传输给 LWIP
	sys_thread_new("xemacif_input_thread", (void(*)(void*))xemacif_input_thread, &server_netif, THREAD_STACKSIZE, DEFAULT_THREAD_PRIO);
}


void assign_default_ip(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
    int err;

    xil_printf("Configuring default IP %s \r\n", DEFAULT_IP_ADDRESS);

    err = inet_aton(DEFAULT_IP_ADDRESS, ip);
    if(!err)
        xil_printf("Invalid default IP address: %d\r\n", err);

    err = inet_aton(DEFAULT_IP_MASK, mask);
    if(!err)
        xil_printf("Invalid default IP MASK: %d\r\n", err);

    err = inet_aton(DEFAULT_GW_ADDRESS, gw);
    if(!err)
        xil_printf("Invalid default gateway address: %d\r\n", err);
}


void init_tcp_socket()
{
    struct sockaddr_in address;
    if ((socket = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
		xil_printf("TCP Client: Error in creating Socket\r\n");
		return;
	}
	address.sin_family = AF_INET;
	address.sin_port = htons(TCP_CONN_PORT);
	address.sin_addr.s_addr = inet_addr(TCP_SERVER_IP_ADDRESS);

    if (connect(socket, (struct sockaddr*)&address, sizeof(address)) < 0) {
		xil_printf("TCP Client: Error on tcp_connect\r\n");
		close(socket);
		return;
	}
}


/**
 * @brief 初始化 TCP 连接  
 * @return *
 */
void init_tcp_connection()
{
	// 初始化网络
	init_network();
    // 为网络接口绑定 IP、掩码、网关
    assign_default_ip(&(server_netif.ip_addr), &(server_netif.netmask), &(server_netif.gw));
    // 初始化 TCP Socket
    init_tcp_socket();
}


/**
 * @brief 初始化 DMA 传输  
 * @param XAxiDma* DMAPtr
 * @param XScuGic* IntcInstancePtr
 * @return *
 */
void init_dma_transmit(XAxiDma* DMAPtr, XScuGic* IntcInstancePtr)
{
    // 初始化系统中断
    init_intr_sys(DMAPtr, IntcInstancePtr);
}


void dma_transmit_thread(void* p)
{
    XAxiDma_SimpleTransfer(&AxiDma, (u32)HevcBsCachePtr[HevcBsCachePtrReceiveIndex], (u32)(HEVC_BS_CACHE_SIZE), XAXIDMA_DEVICE_TO_DMA);
    while(1)
    {
        if(RxDone)
        {
            RxDone = 0;

            if(HevcBsCachePtrReceiveIndex - HevcBsCachePtrTransmitIndex > HEVC_BS_CACHE_NUMS)
            {
                // 接收缓冲区与发送缓冲区索引差超过缓冲区长度，代表 DDR 写入速率远远高于读出速率
                // 部分数据未来得及发送就又有新数据来临，此处传输码流可能出错以导致无法解码
                xil_printf("[ERROE] Data read/write rates are seriously inconsistent\n"); break;
            }
            
            // 确保 Cache 中的数据均在 DDR 中
            Xil_DCacheInvalidateRange((u32)HevcBsCachePtr[HevcBsCachePtrReceiveIndex % HEVC_BS_CACHE_NUMS], HEVC_BS_CACHE_SIZE);
            // 接收缓冲区索引自增
            // 注意此处为了减少收发缓冲区设计的难度，索引均采用非取余的方式自增，因此利用索引获取内存数据时需要取余 HEVC_BS_CACHE_NUMS
            HevcBsCachePtrReceiveIndex += 1;
            // 启动下一次 DMA 传输
            XAxiDma_SimpleTransfer(&AxiDma, (u32)HevcBsCachePtr[HevcBsCachePtrReceiveIndex % HEVC_BS_CACHE_NUMS], (u32)(HEVC_BS_CACHE_SIZE), XAXIDMA_DEVICE_TO_DMA);
        }
    }
}


void tcp_transmit_thread(void* p)
{
    u8  apiflags = 0;
    u32 singleTransmitSize = 0;
    u32 totalTransmitSize  = 0;

    while(1)
    {
        if(HevcBsCachePtrTransmitIndex < HevcBsCachePtrReceiveIndex)
        {
            apiflags = 0;
            singleTransmitSize = 0;
            totalTransmitSize = 0;
            while(totalTransmitSize < HEVC_BS_CACHE_SIZE)
            {
                singleTransmitSize = (HEVC_BS_CACHE_SIZE - totalTransmitSize) > TCP_TRANS_CHCHE_SIZE ? TCP_TRANS_CHCHE_SIZE : (HEVC_BS_CACHE_SIZE - totalTransmitSize);
                // TODO 考虑修改此处数据发送起始地址
                if(lwip_send(socket, (u32*)(HevcBsCachePtr[HevcBsCachePtrTransmitIndex % HEVC_BS_CACHE_NUMS] + totalTransmitSize), singleTransmitSize, apiflags) < singleTransmitSize)
                {
                    xil_printf("[ERROE] Tcp transmit failed\n"); break;
                }
                totalTransmitSize += singleTransmitSize;          
            }            
            HevcBsCachePtrTransmitIndex += 1;
        }
    }
}