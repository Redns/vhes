/* PS_GPIO.h
 *********************************************
 * @Vivado	2022.1
 * @Vitis 	2022.1
 * @Board	MZ7035FD
 * @Chip	xc7z035ffg676-2
 * @DDR		MT41K256M16 RE-125
 *********************************************
 */
#ifndef __GPIO_H__
#define __GPIO_H__

#include "xgpiops.h"

#define GPIO_DIR_INPUT		0	// 设置 GPIO 为输入
#define GPIO_DIR_OUTPUT 	1	// 设置 GPIO 为输出

#define GPIO_OUTPUT_ENABLE	1	// 使能 GPIO 输出
#define GPIO_OUTPUT_DISABLE	0	// 禁用 GPIO 输出

#define GPIO_STATE_LOW		0	// GPIO 为低电平
#define GPIO_STATE_HIGH		1	// GPIO 为高电平

void PS_GPIO_Init();
void PS_GPIO_SetPinMode(uint8_t GPIO_Num, uint8_t GPIO_Dir, uint8_t GPIO_Default_State);
void PS_GPIO_WritePin(uint8_t GPIO_Num, uint8_t GPIO_State);
uint8_t PS_GPIO_ReadPin(uint8_t GPIO_Num);

#endif