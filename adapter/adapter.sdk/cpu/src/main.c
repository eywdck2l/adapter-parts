#include "axi_sd.h"
#include "events.h"
#include "microblaze_sleep.h"
#include "platform.h"
#include "sd-device.h"
#include <inttypes.h>
#include <stdnoreturn.h>

static void handle_got_command(event_sd_device_cmd_t ev) {
  const uint32_t status = ev.controller_status, card_status = ev.card_status,
                 arg = ev.cmd_arg;

  platform_printf("status %08" PRIX32 " csr %08" PRIX32 " arg %08" PRIX32 "\n",
                  status, card_status, arg);
}

noreturn static void main_loop(void) {
  uint_fast32_t idle_count = 0;
  while (1) {
    event_t ev;

    if (get_next_event(&ev)) {
      if (idle_count >= 10000000) {
        uint32_t status;
        idle_count = 0;
        ATOMIC_BLOCK {
          status = AXI_SD_mReadReg(SD_DEVICE_BASEADDR, AXI_SD_STATUS);
        }
        platform_printf("ok status %08" PRIX32 "\n", status);
      } else
        idle_count++;
      continue;
    }

    switch (ev.type) {
    case event_sd_device_got_cmd:
      handle_got_command(ev.payload.sd_device_cmd);
      break;
    case event_sd_device_inactive:
      platform_fputs("sd device inactive\n");
      break;
    case event_sd_device_reset:
      platform_fputs("sd device reset\n");
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
