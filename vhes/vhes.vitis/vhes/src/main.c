#include <unistd.h>
#include "netif/xadapter.h"
#include "platform_config.h"
#include "xil_printf.h"
#include "lwip/init.h"
#include "lwip/inet.h"

// 任务堆栈尺寸
#define THREAD_STACKSIZE 1024

/* IP 相关设置 */
#define DEFAULT_IP_ADDRESS	"192.168.1.10"
#define DEFAULT_IP_MASK		"255.255.255.0"
#define DEFAULT_GW_ADDRESS	"192.168.1.1"

/* 数据绑定 & 信息打印 */
static void print_ip(char *msg, ip_addr_t *ip)
{
    xil_printf(msg);
    xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip),
                ip4_addr3(ip), ip4_addr4(ip));
}

static void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
    print_ip("Board IP:       ", ip);
    print_ip("Netmask :       ", mask);
    print_ip("Gateway :       ", gw);
}

static void assign_default_ip(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
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

void start_application();
void main_thread(void *p);

static int complete_nw_thread;
static sys_thread_t main_thread_handle;

// TCP 套接字句柄
struct netif server_netif;

/**
 * @brief 网络接口初始化线程（绑定 MAC 地址）
 * @param void *p
 * @return *
 */
void network_thread(void *p)
{
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
    // 配置完成
	complete_nw_thread = 1;
    // 恢复主线程
	vTaskResume(main_thread_handle);
    // 删除当前线程
    vTaskDelete(NULL);
    // TODO 删除此处 return
    return;
}

/**
 * @brief:  
 * @param void *p
 * @return *
 */
void main_thread(void *p)
{
	// 初始化 LWIP
	lwip_init();
	// 启动网络配置线程（用于配置网络接口、启动 TCP 传输进程）
	sys_thread_new("nw_thread", network_thread, NULL, THREAD_STACKSIZE, DEFAULT_THREAD_PRIO);
    // 等待网络传输线程配置完成
    // vTaskSuspend 参数为 NULL 时会将当前线程挂起，等待 vTaskResume 解除
	if(!complete_nw_thread)
    {
        vTaskSuspend(NULL);
    }
    // 为网络接口绑定 IP、掩码、网关
    assign_default_ip(&(server_netif.ip_addr), &(server_netif.netmask), &(server_netif.gw));
    // 打印相关 IP 信息
    // TODO 修改此处打印格式
    print_ip_settings(&(server_netif.ip_addr), &(server_netif.netmask), &(server_netif.gw));
	// TODO 此处启动 TCP 发送线程
	start_application();
    // 删除当前线程
	vTaskDelete(NULL);
    // TODO 删除此处 return
	return;
}

int main()
{
	main_thread_handle = sys_thread_new("main_thread", main_thread, 0, THREAD_STACKSIZE, DEFAULT_THREAD_PRIO);
	vTaskStartScheduler();
	while(1);
	return 0;
}
