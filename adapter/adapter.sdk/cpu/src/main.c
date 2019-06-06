#include "axi_sd.h"
#include "events.h"
#include "microblaze_sleep.h"
#include "platform.h"
#include "sd-device.h"
#include <inttypes.h>
#include <stdnoreturn.h>

static inline void handle_got_command(event_sd_device_cmd_t ev) {
  const uint32_t status = ev.controller_status, card_status = ev.card_status,
                 arg = ev.cmd_arg;

  platform_printf("sd device got cmd controller status %08" PRIX32
                  " card status %08" PRIX32 " argument %08" PRIX32 "\n",
                  status, card_status, arg);

  // Bit 6 here is whether the command is an ACMD.
  switch ((status >> AXI_SD_STATUS_CMD_INDEX) & 0x7f) {
  case 0x40 | 41: // ACMD41
    // Check whether the host supports high capacity
    if (arg & 0x40000000) {
      AXI_SD_mWriteReg(SD_DEVICE_BASEADDR, AXI_SD_OCR_OFFSET, 0xC0000000);
      platform_fputs("wrote OCR\n");
    }
    break;
  default:
    break;
  }
}

noreturn static void main_loop(void) {
  while (1) {
    event_t ev;

    if (get_next_event(&ev))
      continue;

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
