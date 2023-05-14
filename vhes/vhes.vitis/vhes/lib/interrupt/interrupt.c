/*
 * @Author:         Redns
 * @Date: 	2023-05-08 13:39:24
 * @LastEditTime: 	2023-05-14 15:26:23
 * @Description: 
 */
#include "dma_intr.h"
#include "sys_intr.h"
#include "interrupt.h"

/**
 * @brief: 初始化中断资源，使能中断
 * @return *
 */
void init_intr_sys(XAxiDma* DMAPtr, XScuGic* IntcInstancePtr)
{
    // 初始化 DMA 中断
	DMA_Intr_Init(DMAPtr, 0);
    // 初始化系统中断
	Init_Intr_System(IntcInstancePtr);
    // 设置全局中断
	Setup_Intr_Exception(IntcInstancePtr);
    // 设置 DMA 中断，将 DMA 中断函数关联至全局中断
	DMA_Setup_Intr_System(IntcInstancePtr, DMAPtr, RX_INTR_ID);
    // 使能 DMA 中断
	DMA_Intr_Enable(IntcInstancePtr, DMAPtr);
}
