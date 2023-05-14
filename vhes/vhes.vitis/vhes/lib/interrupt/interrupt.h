/*
 * @Author:         Redns
 * @Date: 	2023-05-08 13:39:29
 * @LastEditTime: 	2023-05-14 14:30:42
 * @Description: 
 */
#ifndef __INTERRUPT_H_
#define __INTERRUPT_H_

void init_intr_sys(XAxiDma* DMAPtr, XScuGic* IntcInstancePtr);

#endif