/* PS_GPIO.c
 *********************************************
 * @Vivado	2022.1
 * @Vitis 	2022.1
 * @Board	MZ7035FD
 * @Chip	xc7z035ffg676-2
 * @DDR		MT41K256M16 RE-125
 *********************************************
 */
#include "gpio.h"

// GPIO 实例对象
XGpioPs GpioPs;

/*
 * @brief 	初始化 PS 端 MIO 和 EMIO
 */
void PS_GPIO_Init()
{
	// 获取 PS 端 GPIO 配置
	XGpioPs_Config *ConfigPtr = XGpioPs_LookupConfig(XPAR_XGPIOPS_0_DEVICE_ID);

	// 初始化 PS 端 GPIO 实例
	XGpioPs_CfgInitialize(&GpioPs, ConfigPtr, ConfigPtr->BaseAddr);
}


/*
 * @brief 	设置单个 GPIO 引脚模式
 * @param 	GPIO_Num 				GPIO 编号（MIO：0~53，EMIO：54~）
 * @param 	GPIO_Dir 				GPIO 方向（输入/输出）
 * @param 	GPIO_Default_Output		GPIO 默认输出（GPIO设置为输出时有效）
 */
void PS_GPIO_SetPinMode(uint8_t GPIO_Num, uint8_t GPIO_Dir, uint8_t GPIO_Default_State)
{
	// 设置 GPIO 输入/输出方向
	XGpioPs_SetDirectionPin(&GpioPs, GPIO_Num, GPIO_Dir);

	// 输出模式需要使能并设置默认输出电平
	if(GPIO_Dir == GPIO_DIR_OUTPUT)
	{
		// 使能 GPIO 输出
		XGpioPs_SetOutputEnablePin(&GpioPs, GPIO_Num, GPIO_OUTPUT_ENABLE);

		// 设置默认输出
		XGpioPs_WritePin(&GpioPs, GPIO_Num, GPIO_Default_State);
	}
}


/*
 * @brief	写入 GPIO 电平
 * @param	GPIO_Num	GPIO 编号（MIO：0~53，EMIO：54~）
 * @param	GPIO_State	待写入的 GPIO 电平状态
 */
void PS_GPIO_WritePin(uint8_t GPIO_Num, uint8_t GPIO_State)
{
	XGpioPs_WritePin(&GpioPs, GPIO_Num, GPIO_State);
}


/*
 * @brief 	读取 GPIO 电平
 * @param 	GPIO_Num	GPIO 编号（MIO：0~53，EMIO：54~）
 * @return 	高电平输出 1，低电平输出 0
 */
uint8_t PS_GPIO_ReadPin(uint8_t GPIO_Num)
{
	return XGpioPs_ReadPin(&GpioPs, GPIO_Num);
}