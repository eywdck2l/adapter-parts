#include "axi_sd.h"
#include "events.h"
#include "platform.h"
#include "sd-device.h"
#include "xil_io.h"
#include <inttypes.h>

void sd_device_intr_handler(void) {
  uint32_t controller_status =
      AXI_SD_mReadReg(SD_DEVICE_BASEADDR, AXI_SD_STATUS_OFFSET);

  if (controller_status & (1 << AXI_SD_STATUS_INACTIVE))
    event_new((event_t){.type = event_sd_device_inactive});

  if (controller_status & (1 << AXI_SD_STATUS_DEVICE_RESET))
    event_new((event_t){.type = event_sd_device_reset});

  if (controller_status & (1 << AXI_SD_STATUS_CMD_UNREAD)) {
    event_new((event_t){
        .type = event_sd_device_got_cmd,
        .payload = {.sd_device_cmd = {
                        .controller_status = controller_status,
                        .card_status = AXI_SD_mReadReg(SD_DEVICE_BASEADDR,
                                                       AXI_SD_CSR_READ_OFFSET),
                        .cmd_arg = AXI_SD_mReadReg(SD_DEVICE_BASEADDR,
                                                   AXI_SD_CMD_ARG_OFFSET)}}});
  }
}

// made-up cid and csd

const uint32_t cid[4] = {0x03534453, 0x44313238, 0x3021dfb2, 0xb8001423},
               csd[4] = {0x400e0032, 0x5b590000, 0x01ff5f80, 0x0a800053};

void sd_device_init(void) {
  for (size_t i = 0; i < 4; i++)
    AXI_SD_mWriteReg(SD_DEVICE_BASEADDR, AXI_SD_CID_OFFSET + i * 4, cid[i]);
  for (size_t i = 0; i < 4; i++)
    AXI_SD_mWriteReg(SD_DEVICE_BASEADDR, AXI_SD_CSD_OFFSET + i * 4, csd[i]);
}
