#include <unistd.h>
#include "netif/xadapter.h"
#include "xil_printf.h"
#include "lwip/init.h"
#include "lwip/inet.h"
#include "lwipopts.h"
#include "xlwipconfig.h"
#include "lwip/tcp.h"
#include "lwip/ip_addr.h"
#include "lwip/sockets.h"
#include "lwip/sys.h"
#include "sii9011.h"
#include "dma_intr.h"
#include "sys_intr.h"

/* 缓冲区大小设置 */
#define THREAD_STACKSIZE            1024                // 任务堆栈大小
#define HEVC_BS_CACHE_SIZE          5 * 1024 * 1024     // 码流缓冲区大小（单位：字节）
#define HEVC_BS_CACHE_NUMS          30                  // 码流缓冲区数量
#define TCP_TRANS_CHCHE_SIZE        4096                // TCP 传输缓冲区大小（单位：字节）

/* IP 相关设置 */
#define DEFAULT_IP_ADDRESS	        "192.168.1.10"      // 本机 IP
#define DEFAULT_IP_MASK		        "255.255.255.0"     // 掩码
#define DEFAULT_GW_ADDRESS	        "192.168.1.1"       // 网关
#define TCP_SERVER_IP_ADDRESS       "192.168.1.100"     // TCP 服务器 IP
#define TCP_CONN_PORT               1896                // TCP 连接端口号

/* 相关外设 ID */
#define IIC_SII9011                 XPAR_XIICPS_0_DEVICE_ID                 // SiI9011 IIC 配置引脚
#define GPIO_SII_RST_N              XPAR_GPIO_SII_RST_N_DEVICE_ID           // SiI9011 复位引脚
#define GPIO_VHES_CORE_RST_N        XPAR_GPIO_PL_RST_N_DEVICE_ID            // Vhes_Core 复位引脚
#define GPIO_VHES_CORE_RST_DONE     XPAR_GPIO_PL_RST_N_DEVICE_ID            // Vhes_Core 复位完成引脚
#define GPIO_AXIS_TRANSMIT_START    XPAR_GPIO_AXIS_TRANSMIT_START_DEVICE_ID // AXIS 数据抓换开始引脚

/* 数据缓冲区 */
u32 HevcBsCachePtrReceiveIndex;                     // 接收缓存索引（正在接收中）
u32 HevcBsCachePtrTransmitIndex;                    // 发送缓存索引（等待发送中）
u32 HevcBsCachePtr[HEVC_BS_CACHE_NUMS];             // HEVC 码流缓冲区

u8  apiflags = 0;
u32 singleTransmitSize = 0;
u32 totalTransmitSize  = 0;

int socket;
struct netif server_netif;

XScuGic Intc; 
XAxiDma AxiDma;

XGpio gpio_sii_rst_n;
XGpio gpio_vhes_core_rst_n;
XGpio gpio_vhes_core_rst_done;
XGpio gpio_axis_transmit_start;

extern volatile int Error;
extern volatile int RxDone;

static int init_netif_thread_complete;
static sys_thread_t dma_transmit_thread_handle;
static sys_thread_t network_transmit_thread_handle;

void init_sys();
void init_gpio();
void init_socket();
void vhes_core_rst_n();
void init_netif_thread(void* p);
void dma_transmit_thread(void* p);
void network_transmit_thread(void* p);
void set_axis_transmit(int start);
void assign_default_ip(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw);

int main()
{
    // 初始化系统
    init_sys();
    // 创建网口传输线程
	network_transmit_thread_handle = sys_thread_new("network_transmit_thread", network_transmit_thread, 0, THREAD_STACKSIZE, DEFAULT_THREAD_PRIO);
	// 创建 DMA 传输线程
    dma_transmit_thread_handle = sys_thread_new("dma_transmit_thread", dma_transmit_thread, 0, THREAD_STACKSIZE, DEFAULT_THREAD_PRIO);
    vTaskStartScheduler();
	while(1);
	return 0;
}


/**
 * @brief:系统初始化函数
 * @return *
 */
void init_sys()
{
    // 初始化 GPIO
    init_gpio();
    // 初始化 SII9011
    sii9011_init(IIC_SII9011, &gpio_sii_rst_n);
    // 初始化 DMA
    DMA_Intr_Init(&AxiDma, 0);
	Init_Intr_System(&Intc); 
	Setup_Intr_Exception(&Intc);
	DMA_Setup_Intr_System(&Intc, &AxiDma, RX_INTR_ID);
	DMA_Intr_Enable(&Intc, &AxiDma);
    // 初始化码流缓冲区
    HevcBsCachePtrReceiveIndex  = 0;
    HevcBsCachePtrTransmitIndex = 0;
    for(int i = 0; i < HEVC_BS_CACHE_NUMS; i++)
    {
        HevcBsCachePtr[i] = RX_BUFFER_BASE + HEVC_BS_CACHE_SIZE * i; 
    }
    // 复位 vhes_core
    vhes_core_rst_n();
}


void init_gpio()
{
    // 初始化 SiI9011 复位 GPIO
    XGpio_Initialize(&gpio_sii_rst_n, GPIO_SII_RST_N);
	XGpio_SetDataDirection(&gpio_sii_rst_n, 1, 0x0); 
    XGpio_DiscreteWrite(&gpio_sii_rst_n, 1, 0x1);
    // 初始化 vhes core 复位 GPIO
    XGpio_Initialize(&gpio_vhes_core_rst_n, GPIO_VHES_CORE_RST_N);
	XGpio_SetDataDirection(&gpio_vhes_core_rst_n, 1, 0x0); 
    XGpio_DiscreteWrite(&gpio_vhes_core_rst_n, 1, 0x1);
    // 初始化 vhes core 复位完成 GPIO
    XGpio_Initialize(&gpio_vhes_core_rst_done, GPIO_VHES_CORE_RST_DONE);
	XGpio_SetDataDirection(&gpio_vhes_core_rst_done, 1, 0x1); 
    // 初始化 AXIS 传输控制 GPIO
    XGpio_Initialize(&gpio_axis_transmit_start, GPIO_AXIS_TRANSMIT_START);
	XGpio_SetDataDirection(&gpio_axis_transmit_start, 1, 0x0); 
    XGpio_DiscreteWrite(&gpio_axis_transmit_start, 1, 0x0);
}


/**
 * @brief:复位 vhes_core
 * @return *
 */
void vhes_core_rst_n()
{
    // 拉低 RST_N 复位引脚
	XGpio_DiscreteWrite(&gpio_vhes_core_rst_n, 1, 0x0);
	usleep(50);
	XGpio_DiscreteWrite(&gpio_vhes_core_rst_n, 1, 0x1);
    // 检测复位是否完成
    while(XGpio_DiscreteRead(&gpio_vhes_core_rst_n, 1) != 1)
    {

    }
    xil_printf("[SUCCESS] Vhes core reset done\n");
}


void set_axis_transmit(int start)
{
    if(start)
    {
        XGpio_DiscreteWrite(&gpio_axis_transmit_start, 1, 0x1);
    }
    else
    {
        XGpio_DiscreteWrite(&gpio_axis_transmit_start, 1, 0x0);
    }
}


void dma_transmit_thread(void* p)
{
    // 启动 DMA 传输
    set_axis_transmit(1);
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


/**
 * @brief:初始化网络接口
 * @return *
 */
void init_netif_thread(void* p)
{
	// 网卡 MAC 地址
	u8_t mac_ethernet_address[] =
				{ 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };
    // 添加网络接口至列表
	if (!xemac_add(&server_netif, NULL, NULL, NULL, mac_ethernet_address, XPAR_XEMACPS_0_BASEADDR))
    {
		xil_printf("Error adding N/W interface\r\n"); return;
	}
    // 设置默认网络接口
	netif_set_default(&server_netif);
    // 启用网络接口
	netif_set_up(&server_netif);
    // 创建数据包接收线程
    // SOCKET API 下必须启用，该线程负责更新缓冲区数据包至 LWIP
	sys_thread_new("xemacif_input_thread", (void(*)(void*))xemacif_input_thread, &server_netif, THREAD_STACKSIZE, DEFAULT_THREAD_PRIO);
    // 网络接口初始化完成
    init_netif_thread_complete = 1;
    // 恢复主线程
    vTaskResume(network_transmit_thread_handle);
    vTaskDelete(NULL);
}


/**
 * @brief:初始化套接字
 * @return *
 */
void init_socket()
{
    // socket 配置信息
    struct sockaddr_in address;
    // 创建 socket
    if ((socket = socket(AF_INET, SOCK_STREAM, 0)) < 0) 
    {
		xil_printf("[ERROR] Failed to create socket\r\n"); return;
	}
	address.sin_family = AF_INET;
	address.sin_port = htons(TCP_CONN_PORT);
	address.sin_addr.s_addr = inet_addr(TCP_SERVER_IP_ADDRESS);
    // 连接服务器
    if (connect(socket, (struct sockaddr*)&address, sizeof(address)) < 0) 
    {
        xil_printf("[ERROR] Failed to connect server\r\n"); return;
        close(socket);
		return;
	}
}


/**
 * @brief:网络传输线程，将缓冲区数据发送至上位机
 * @param void* p
 * @return *
 */
void network_transmit_thread(void* p)
{
    // 创建 sys_thread_new 前需要初始化 LWIP
    lwip_init();
    // 初始化网卡
    sys_thread_new("init_netif_thread", init_netif_thread, NULL, THREAD_STACKSIZE, DEFAULT_THREAD_PRIO);
    if(!init_netif_thread_complete)
    {
        // 网卡初始化完成前挂起当前线程
        vTaskSuspend(NULL);
    }
    // 为网卡绑定 IP 信息
    assign_default_ip(&(server_netif.ip_addr), &(server_netif.netmask), &(server_netif.gw));
    // 初始化 socket
    init_socket();
    // 循环发送缓冲区数据
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
                if(lwip_send(socket, (u32*)(HevcBsCachePtr[HevcBsCachePtrTransmitIndex % HEVC_BS_CACHE_NUMS] + totalTransmitSize), singleTransmitSize, apiflags) < singleTransmitSize)
                {
                    xil_printf("[ERROE] Socket transmit failed\r\n"); break;
                }
                totalTransmitSize += singleTransmitSize;          
            }            
            HevcBsCachePtrTransmitIndex += 1;
        }
    }
}


/**
 * @brief:为设备绑定 IP 地址
 * @param ip_addr_t *ip     IP 地址
 * @param ip_addr_t *mask   掩码
 * @param ip_addr_t *gw     网关
 * @return *
 */
void assign_default_ip(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
	int err;
    // 配置本机 IP 地址
	err = inet_aton(DEFAULT_IP_ADDRESS, ip);
	if(!err)
    {
        xil_printf("Invalid default IP address: %d\r\n", err);
    }
    // 配置掩码
	err = inet_aton(DEFAULT_IP_MASK, mask);
	if(!err)
    {
        xil_printf("Invalid default IP MASK: %d\r\n", err);
    }
	// 配置网关
	err = inet_aton(DEFAULT_GW_ADDRESS, gw);
	if(!err)
    {
        xil_printf("Invalid default gateway address: %d\r\n", err);
    }
}
