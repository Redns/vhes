/*
 * @Author:         Redns
 * @Date: 	2023-05-08 15:04:16
 * @LastEditTime: 	2023-05-08 22:17:15
 * @Description: 
 */
#include "reset.h"
#include "sleep.h"
#include "xil_io.h"

// SLCR 寄存器绝对地址
#define SLCR_UNLOCK_ADDR        0xF8000008
#define SLCR_LOCK_ADDR          0xF8000004

// FPGA_RST_CTRL 寄存器绝对地址
#define FPGA_RST_CTRL           0xF8000240
#define UNLOCK_KEY              0xDF0D      // 解锁码
#define LOCK_KEY                0x767B      // 加锁码

#define PL_RST_MASK             0x01        //低四位对应 FCLK_RESETN[3:0]
#define PL_CLR_MASK             0x00

void reset()
{
    // SLCR 解锁
    Xil_Out32(SLCR_UNLOCK_ADDR, UNLOCK_KEY);  
    // 复位 PL
    Xil_Out32(FPGA_RST_CTRL, PL_RST_MASK);  
    usleep(10);
    Xil_Out32(FPGA_RST_CTRL, PL_CLR_MASK);  
    // SLCR 加锁
    Xil_Out32(SLCR_LOCK_ADDR, LOCK_KEY);  
}