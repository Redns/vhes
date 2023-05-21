#ifndef __SII9011_H_
#define __SII9011_H_

#include <stdio.h>
#include <unistd.h>
#include "xgpio.h"
#include "ps_iic.h"
#include "xil_types.h"

void sii9011_init(u16 deviceId, XGpio* rstnGpio);

#endif