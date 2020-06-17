#include "util.h"
#include "interrupts.h"
#include "xil_exception.h"
#include <stdnoreturn.h>

noreturn void abort(void) {
  Xil_ExceptionDisable();
  flush_log();
  while (1)
    ;
}
