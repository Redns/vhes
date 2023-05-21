#include "sii9011.h"

u8 sii9011_init_data[][2] =
{
		{0x05, 0x10},
		{0x08, 0x05},
		{0x09, 0x01},
		{0x05, 0x04},
		{0xb5, 0x04},
		{0xff, 0xff}
};


void sii9011_init(u16 deviceId, XGpio* rstnGpio)
{
	XIicPs IicInstance;
    // 复位芯片
	XGpio_DiscreteWrite(rstnGpio, 1, 0x0);
	usleep(50000);
	XGpio_DiscreteWrite(rstnGpio, 1, 0x1);
    // 配置芯片寄存器
	if (i2c_init(&IicInstance, deviceId, 100000) != XST_SUCCESS)
	{
		xil_printf("[ERROR] Failed to init XIicPs_Initialize\r\n"); return;
	}
	usleep(50000);
	for(int i = 0; ; i++)
	{
		if((sii9011_init_data[i][0] == 0xff) && (sii9011_init_data[i][1] == 0xff))
		{
			break;
		}
        // TODO 核验此处设备地址 0x60 >> 1
		i2c_reg8_write(&IicInstance, 0x60 >> 1, (unsigned char)sii9011_init_data[i][0], (unsigned char)sii9011_init_data[i][1]);
	}
}
