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

int socket;
struct netif server_netif;

void init_sys();
void init_socket();
void init_netif_thread(void* p);
void network_transmit_thread(void* p);
void assign_default_ip(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw);

static int init_netif_thread_complete;
static sys_thread_t network_transmit_thread_handle;

int main()
{
	network_transmit_thread_handle = sys_thread_new("network_transmit_thread", network_transmit_thread, 0, THREAD_STACKSIZE, DEFAULT_THREAD_PRIO);
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
		xil_printf("[ERROR] Failed to connect server\r\n");
		close(socket);
	}
}


void network_transmit_thread(void* p)
{
    // 创建 sys_thread_new 前需要初始化 LWIP
    lwip_init();
    xil_printf("[SUCCESS] Lwip init done\r\n");
    // 初始化网卡
    sys_thread_new("init_netif_thread", init_netif_thread, NULL, THREAD_STACKSIZE, DEFAULT_THREAD_PRIO);
    if(!init_netif_thread_complete)
    {
        // 网卡初始化完成前挂起当前线程
        vTaskSuspend(NULL);
    }
    xil_printf("[SUCCESS] Netif init done\r\n");
    // 为网卡绑定 IP 信息
    assign_default_ip(&(server_netif.ip_addr), &(server_netif.netmask), &(server_netif.gw));
    xil_printf("[SUCCESS] Assign board with ip: %s\r\n", server_netif.ip_addr);
    // 初始化 socket
    init_socket();
    xil_printf("[SUCCESS] Socket init done, ready to transmit\r\n");
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
