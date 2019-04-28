#include "axi_sd.h"
#include "events.h"
#include "microblaze_sleep.h"
#include "platform.h"
#include <inttypes.h>
#include <stdnoreturn.h>

#define IF_BASEADDR XPAR_AXI_SD_0_S_AXI_BASEADDR

noreturn static void main_loop(void) {
  while (1) {
    event_t ev;

    if (get_next_event(&ev))
      continue;

    switch (ev.type) {
    case event_sd_device_got_cmd:
      platform_printf("got cmd status %08" PRIX32 " arg %08" PRIX32
                      " tx_ctrl %08" PRIX32 "\n",
                      ev.payload.sd_device.status_reg,
                      ev.payload.sd_device.rx_arg_reg,
                      ev.payload.sd_device.tx_ctrl_reg);
      break;
    default:
      break;
    }
  }
}

int main() {
  platform_init();

  platform_fputs("initialization done\n");

  main_loop();
}
