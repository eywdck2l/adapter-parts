#ifndef _SD_DEVICE_H
#define _SD_DEVICE_H

#define SD_DEVICE_BASEADDR XPAR_AXI_SD_0_S_AXI_BASEADDR

void sd_device_intr_handler(void) __attribute__((fast_interrupt));

void sd_device_init(void);

#endif
