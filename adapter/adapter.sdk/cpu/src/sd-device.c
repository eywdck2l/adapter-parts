#include "axi_sd.h"
#include "events.h"
#include "platform.h"
#include "sd-device.h"
#include "xil_io.h"
#include <inttypes.h>
#include <string.h>

// Made-up CID and CSD
const uint32_t cid[4] = {0x03534453, 0x44313238, 0x3021dfb2, 0xb8001423},
               csd[4] = {0x400e0032, 0x5b590000, 0x01ff5f80, 0x0a800053};
// 16G bytes
const uint32_t dev_size = 0x1ffffff;

static inline void handle_cmd_unread(uint32_t status);
static inline void handle_may_write_data(uint32_t status);
static inline void handle_may_read_data(uint32_t status);

uint32_t block_addr;

void sd_device_intr_handler(void) {
  uint32_t status = AXI_SD_mReadReg(SD_DEVICE_BASEADDR, AXI_SD_STATUS);

  if (status & (1 << AXI_SD_STATUS_INACTIVE))
    event_new((event_t){.type = event_sd_device_inactive});

  if (status & (1 << AXI_SD_STATUS_GOT_RESET))
    event_new((event_t){.type = event_sd_device_reset});

  if (status & (1 << AXI_SD_STATUS_ANY_CMD_UNREAD)) {
    event_new((event_t){
        .type = event_sd_device_got_cmd,
        .payload = {
            .sd_device_cmd = {.controller_status = status,
                              .card_status = AXI_SD_mReadReg(SD_DEVICE_BASEADDR,
                                                             AXI_SD_CSR_READ),
                              .cmd_arg = AXI_SD_mReadReg(
                                  SD_DEVICE_BASEADDR, AXI_SD_LAST_CMD_ARG)}}});
  }

  if (status & (1 << AXI_SD_STATUS_SAVED_CMD_UNREAD))
    handle_cmd_unread(status);

  if (status & (1 << AXI_SD_STATUS_MAY_WRITE_DATA))
    handle_may_write_data(status);

  if (status & (1 << AXI_SD_STATUS_MAY_READ_DATA))
    handle_may_read_data(status);
}

// Bit 6 means ACMD
static inline uint_fast8_t get_cmd_index(uint32_t status) {
  return (status >> AXI_SD_STATUS_SAVED_CMD_INDEX) & 0x7f;
}

#define DATA_WRITE_WORDS(...)                                                  \
  ({                                                                           \
    const uint32_t words[] = {__VA_ARGS__};                                    \
    data_write_all(words, words + sizeof(words) / 4);                          \
  })

static inline void data_write_word(uint32_t word) {
  AXI_SD_mWriteReg(SD_DEVICE_BASEADDR, AXI_SD_DATA_WRITE, word);
}

static inline void data_write(const uint32_t *p, const uint32_t *end) {
  for (; p < end; p++)
    data_write_word(*p);
}

static inline void data_start(void) {
  AXI_SD_mWriteReg(SD_DEVICE_BASEADDR, AXI_SD_CONTROL,
                   1 << AXI_SD_CONTROL_START_TRAN);
}

static inline void data_end(void) {
  AXI_SD_mWriteReg(SD_DEVICE_BASEADDR, AXI_SD_CONTROL,
                   1 << AXI_SD_CONTROL_NO_MORE_DATA);
}

static inline void data_write_all(const uint32_t *p, const uint32_t *end) {
  data_start();
  data_write(p, end);
  data_end();
}

static inline void handle_cmd_unread(uint32_t status) {
  uint32_t arg = AXI_SD_mReadReg(SD_DEVICE_BASEADDR, AXI_SD_SAVED_CMD_ARG);

  switch (get_cmd_index(status)) {
  case 6: {
    unsigned unsupported = 0;
    // Only the default functions are supported as of now.
    for (unsigned i = 0; i < 6; i++) {
      unsigned fun = (arg >> (i * 4)) & 0xf;
      if (fun != 0 && fun != 0xf)
        unsupported |= 1 << i;
    }

    // Write the response
    uint32_t resp[5] = {0x8001, 0x80018001, 0x80018001, 0x80010000, 0x00000000};
    if (!unsupported)
      resp[0] |= 0x00c80000;
    // The selection remains 0 if valid and is set to 0xf to indicate
    // an invalid selection is made.
    for (unsigned i = 2; i < 6; i++)
      if (unsupported & (1 << i))
        resp[3] |= 0xf << (4 * (i - 2));
    for (unsigned i = 0; i < 2; i++)
      if (unsupported & (1 << i))
        resp[4] |= 0xf000000 << (4 * i);

    data_start();
    data_write(resp, resp + sizeof(resp) / sizeof(resp[0]));
    for (unsigned i = 0; i < 11; i++)
      data_write_word(0);
    data_end();

    break;
  }

  case 17:
    // Write back the address as a test
    data_start();
    data_write_word(arg);
    for (uint32_t i = 0; i < 127; i++)
      data_write_word(i);
    data_end();
    break;

  case 18:
    block_addr = arg;
    data_start();
    break;

  case 24:
  case 25:
    // Discard the data for now.
    data_start();
    break;

  case 0x40 | 13:
    // Write back the read block count
    DATA_WRITE_WORDS(
        AXI_SD_mReadReg(SD_DEVICE_BASEADDR, AXI_SD_DAT_BLOCKS_READ));
    break;

  case 0x40 | 41:
    // Check whether the host supports high capacity
    if ((arg & 0x40000000) && (status & (1 << AXI_SD_STATUS_GOT_CMD8))) {
      // Write the test CID and CSD
      for (size_t i = 0; i < 4; i++)
        AXI_SD_mWriteReg(SD_DEVICE_BASEADDR, AXI_SD_CID + i * 4, cid[i]);
      for (size_t i = 0; i < 4; i++)
        AXI_SD_mWriteReg(SD_DEVICE_BASEADDR, AXI_SD_CSD + i * 4, csd[i]);
      // size
      AXI_SD_mWriteReg(SD_DEVICE_BASEADDR, AXI_SD_DEV_SIZE, dev_size);

      // Set the ready bit
      AXI_SD_mWriteReg(SD_DEVICE_BASEADDR, AXI_SD_OCR, 0xC0000000);
    }
    break;

  case 0x40 | 51:
    // Write CSR
    DATA_WRITE_WORDS(0x02858003, 0);
    break;

  default:
    break;
  }
}

static inline void handle_may_write_data(uint32_t status) {
  switch (get_cmd_index(status)) {
  case 18:
    // The block address is echoed back followed by incrementing
    // numbers.
    data_write_word(block_addr++);
    for (uint32_t i = 0; i < 127; i++)
      data_write_word(i);
    break;
  }
}

static inline void handle_may_read_data(uint32_t status) {
  for (unsigned i = 128; i; i--)
    (void)AXI_SD_mReadReg(SD_DEVICE_BASEADDR, AXI_SD_DATA_READ);
}

void sd_device_init(void) {
  // Enable interrupts
  AXI_SD_mWriteReg(
      SD_DEVICE_BASEADDR, AXI_SD_INTR_EN,
      (1 << AXI_SD_STATUS_MAY_READ_DATA) | (1 << AXI_SD_STATUS_MAY_WRITE_DATA) |
          (1 << AXI_SD_STATUS_SAVED_CMD_UNREAD) |
          (1 << AXI_SD_STATUS_ANY_CMD_UNREAD) | (1 << AXI_SD_STATUS_INACTIVE) |
          (1 << AXI_SD_STATUS_GOT_RESET));
}
