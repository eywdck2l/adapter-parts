#ifndef _SD_HOST_H
#define _SD_HOST_H

#include "enable-part.h"
#include "util.h"
#include "xaxis_switch_hw.h"
#include "xparameters.h"

#define SD_HOST_TO_CPU 0
#define SD_HOST_TO_CRYPT 1
#define SD_HOST_TO_REST 2
#define SD_HOST_TO_INTF 3

#define SD_HOST_FROM_CPU 0
#define SD_HOST_FROM_CRYPT 1
#define SD_HOST_FROM_REST 2
#define SD_HOST_FROM_INTF 3
#define SD_HOST_FROM_CONSTANT 4

static inline void sd_host_route_set(int dest, int source) {
  XAxisScr_WriteReg(XPAR_SD_HOST_DATA_SWITCH_BASEADDR,
                    XAXIS_SCR_MI_MUX_START_OFFSET + 4 * dest, source);
}

static inline void sd_host_route_commit(void) {
  // The data width converters are reset here manually.  Ideally we want
  // it to be reset alongside the data switch.  But I didn't find a nice
  // way to do it.

  enable_part(ENABLE_PART_SD_HOST_DATA_CPU, 0);
  XAxisScr_WriteReg(XPAR_SD_HOST_DATA_SWITCH_BASEADDR, XAXIS_SCR_CTRL_OFFSET,
                    XAXIS_SCR_CTRL_REG_UPDATE_MASK);
  enable_part(ENABLE_PART_SD_HOST_DATA_CPU, 1);
}

static inline void sd_host_route_disable(void) {
  for (unsigned i = 0; i < XPAR_SD_HOST_DATA_SWITCH_NUM_MI; i++)
    sd_host_route_set(i, XAXIS_SCR_MI_X_DISABLE_MASK);
  sd_host_route_commit();
}

extern void sd_host_interrupt_handler(void) __attribute__((fast_interrupt));

/**
 * Initialize. Then call `cb` with the status. This function is to be
 * called before interrupts are enabled.
 */
extern void sd_host_initialize(void (*cb)(int));

#endif
