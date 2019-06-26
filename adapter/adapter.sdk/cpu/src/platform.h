#ifndef _PLATFORM_H
#define _PLATFORM_H

#include "mb_interface.h"
#include "xil_printf.h"
#include <inttypes.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>

// Disable interrupts in the block and enable interrupts after it.  It
// does not work properly by itself in an interrupt routine because R14
// will be written in case an interrupt interrupts the current interrupt
// routine.
#define ATOMIC_BLOCK                                                           \
  for (bool _atomic_first = (microblaze_disable_interrupts(), 1);              \
       _atomic_first; _atomic_first = (microblaze_enable_interrupts(), 0))

// Be careful not to cause stack overflow when using the following
// macro.
//
// Enable interrupts within an interrupt routine.  It should be last in
// an interrupt routine.  It does not stop itself being called an
// arbitrary number of times if the same interrupt keeps occurring
// before the interrupt handlers have finished.  The bits to be saved in
// MSR are ignored.
#define INTR_NON_CRITICAL_REENTRANT_START()                                    \
  int _intr_non_critical_r14_saved = mfgpr(r14);                               \
  do {                                                                         \
    microblaze_enable_interrupts();                                            \
  } while (0)

#define INTR_NON_CRITICAL_REENTRANT_STOP()                                     \
  do {                                                                         \
    microblaze_disable_interrupts();                                           \
    mtgpr(r14, _intr_non_critical_r14_saved);                                  \
  } while (0)

// Enable interrupts within an interrupt routine and skip future
// invocations of the same block.  It should be last in an interrupt
// routine.
#define INTR_NON_CRITICAL_START()                                              \
  static volatile bool _intr_non_critical_nested = 0;                          \
  if (_intr_non_critical_nested)                                               \
    return;                                                                    \
  _intr_non_critical_nested = 1;                                               \
  INTR_NON_CRITICAL_REENTRANT_START()

#define INTR_NON_CRITICAL_STOP()                                               \
  _intr_non_critical_nested = 0;                                               \
  INTR_NON_CRITICAL_REENTRANT_STOP()

#ifndef OUTPUT_BUFFER_SIZE
#define OUTPUT_BUFFER_SIZE 1024
#endif

// message to print in case of output buffer overflow
#define OUTPUT_BUFFER_OVERFLOW_MESSAGE                                         \
  "\r\n"                                                                       \
  "... truncated, output buffer overflow\r\n"

// Flush the output buffer.
void flush_printed(void);

// try to flush the output buffer, return whether there is data left
bool flush_printed_try(void);

void platform_init(void);

// Print string.  No trailing newline is added.
static inline void platform_fputs(const char *s) { print(s); }

#define platform_printf(s, ...) xil_printf((s), ##__VA_ARGS__)

#endif
