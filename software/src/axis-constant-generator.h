#ifndef _AXIS_CONSTANT_GENERATOR_H
#define _AXIS_CONSTANT_GENERATOR_H

#include "xil_io.h"
#include "xparameters.h"
#include <inttypes.h>

#define CONST_GEN_REG_VALUE 0
#define CONST_GEN_REG_COUNT_IN 8
#define CONST_GEN_REG_COUNT_DONE 16
#define CONST_GEN_REG_START 24

static inline void const_gen_reset(void) {
  Xil_Out32(XPAR_CONST_GEN_BASEADDR + CONST_GEN_REG_COUNT_IN, 0);
  Xil_Out32(XPAR_CONST_GEN_BASEADDR + CONST_GEN_REG_VALUE, 0);
}

static inline void const_gen_set(unsigned char value, uint64_t count) {
  Xil_Out32(XPAR_CONST_GEN_BASEADDR + CONST_GEN_REG_VALUE, value);
  Xil_Out64(XPAR_CONST_GEN_BASEADDR + CONST_GEN_REG_COUNT_IN, count);
  Xil_Out32(XPAR_CONST_GEN_BASEADDR + CONST_GEN_REG_START, 1);
}

#endif
