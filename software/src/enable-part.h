#ifndef _ENABLE_PART_H
#define _ENABLE_PART_H

#include "xil_io.h"
#include "xparameters.h"
#include <inttypes.h>
#include <stdbool.h>

#define ENABLE_PART_SD_CARD_DATA_CPU 0
#define ENABLE_PART_SD_HOST_DATA_CPU 1

static inline void enable_part(unsigned part, bool enable) {
  Xil_Out32(XPAR_RESET_GENERATOR_WRAP_0_BASEADDR + 4 * part, enable);
}

#endif
