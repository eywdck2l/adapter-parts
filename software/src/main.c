#include "crypt.h"
#include "image.h"
#include "interrupts.h"
#include "sd-card.h"
#include "sd-host.h"
#include "time.h"
#include "util.h"
#include "xil_exception.h"

static void sd_host_initialization_callback(int);

int main(void) {
  uart_init();
  time_init();
  log_info("Initialize\n");
  sd_card_initialize();
  crypt_initialize();
  sd_host_initialize(sd_host_initialization_callback);
  interrupts_init();

  Xil_ExceptionInit();
  Xil_ExceptionEnable();

  while (1) {
    Xil_ExceptionDisable();
    if (call_schedule_jobs) {
      schedule_jobs();
    }
    Xil_ExceptionEnable();
  }
}

static void sd_host_initialization_callback(int err) {
  if (err) {
    log_error("Got error during initialization %d, giving up\n", err);
    return;
  }

  read_and_parse_config();
}
