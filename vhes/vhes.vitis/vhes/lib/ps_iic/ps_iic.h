#ifndef __PS_IIC_H__
#define __PS_IIC_H__

#include "xiicps.h"
#include "xil_types.h"

int i2c_init(XIicPs *IicInstance, u16 DeviceId, u32 FsclHz);
int i2c_wrtie_bytes(XIicPs *IicInstance,u8 i2c_slave_addr,void *buf,int byte_num);
int i2c_read_bytes(XIicPs *IicInstance,u8 i2c_slave_addr,void *buf,int byte_num);
u8 i2c_reg8_read(XIicPs *IicInstance,u8 i2c_slave_addr,u8 reg_addr);
int i2c_reg8_write(XIicPs *IicInstance,u8 i2c_slave_addr,u8 reg_addr,u8 data);


#endif
