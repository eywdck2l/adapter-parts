#include "sd-card.h"
#include "axi_sd_card.h"
#include "enable-part.h"
#include "image.h"
#include "sd-definitions.h"
#include "stddef.h"
#include "util.h"
#include "xaxis_switch_hw.h"
#include "xparameters.h"
#include <stdbool.h>
#include <string.h>

#define WRITE_REG(addr, data)                                                  \
  AXI_SD_CARD_mWriteReg(XPAR_SD_CARD_WRAPPER_SD_CARD_S_AXI_BASEADDR, addr, data)

#define READ_REG(addr)                                                         \
  AXI_SD_CARD_mReadReg(XPAR_SD_CARD_WRAPPER_SD_CARD_S_AXI_BASEADDR, addr)

#define OCR_VOLTAGE_WINDOW 0xff8000

// Capacity limit for a standard capacity card.  Section 5.3.2 of the
// standard gives this number.  Although older versions of the standard
// allowed up to 4GB.
#define CAPACITY_LIMIT_STANDARD_CAPACITY 0x3f6000ULL

// Capacity limit for a high capacity card.
#define CAPACITY_LIMIT_HIGH_CAPACITY 0x100000000ULL

static enum {
  GOT_ACMD41 = 0x1,
  HOST_SUPPORTS_HIGH_CAPACITY = 0x2,
  GOT_INFO = 0x4,
  TRANSFER = 0x8,
  REQUEST_IS_READ = 0x10,
  TRAN_NOTIFIER = 020,
  EXPECTING_PRG = 0x40
} flags;

static my_blkcnt_t capacity;

static void handle_command(uint32_t status, uint32_t csr);
static void handle_prg(uint32_t status, uint32_t csr);
static void handle_block_done(uint32_t status);

// Data switch

#define DATA_TO_REST 0
#define DATA_TO_INTF 1
#define DATA_TO_CPU 2

#define DATA_FROM_REST 0
#define DATA_FROM_INTF 1
#define DATA_FROM_CPU 2

#define DATA_SWITCH_BASEADDR XPAR_SD_CARD_DATA_SWITCH_BASEADDR

static inline void data_route_set(int dest, int source) {
  XAxisScr_WriteReg(DATA_SWITCH_BASEADDR,
                    XAXIS_SCR_MI_MUX_START_OFFSET + 4 * dest, source);
}

static inline void data_route_commit(void) {
  XAxisScr_WriteReg(DATA_SWITCH_BASEADDR, XAXIS_SCR_CTRL_OFFSET,
                    XAXIS_SCR_CTRL_REG_UPDATE_MASK);
}

static inline void data_route_disable(void) {
  for (unsigned i = 0; i < XPAR_SD_CARD_DATA_SWITCH_NUM_MI; i++)
    data_route_set(i, XAXIS_SCR_MI_X_DISABLE_MASK);
  data_route_commit();
}

void sd_card_initialize(void) {
  flags = 0;

  enable_part(ENABLE_PART_SD_CARD_DATA_CPU, 0);
  data_route_disable();

  WRITE_REG(SD_CARD_REG_INTR_EN,
            (1 << SD_CARD_REG_STATUS_SAVED_CMD_UNREAD) |
                (1 << SD_CARD_REG_STATUS_GOT_NEW_CMD12) |
                (1 << SD_CARD_REG_STATUS_INACTIVE) |
                (1 << SD_CARD_REG_STATUS_GOT_RESET) |
                (1 << SD_CARD_REG_STATUS_DAT_DONE) |
                (1 << SD_CARD_REG_STATUS_DAT_BLOCK_DONE));
}

my_blkcnt_t sd_card_get_capacity_limit(void) {
  // If we don't know whether the host supports high capacity cards yet,
  // assume it does.  The worst outcome is declaring a bigger image in
  // the archive of which only part can be accessed.
  if ((flags & GOT_ACMD41) && !(flags & HOST_SUPPORTS_HIGH_CAPACITY))
    return CAPACITY_LIMIT_STANDARD_CAPACITY;
  else
    return CAPACITY_LIMIT_HIGH_CAPACITY;
}

static uint32_t read_status(void) { return READ_REG(SD_CARD_REG_STATUS); }

static unsigned char sd_crc7(const char data[15]) {
  signed char result = 0;
  for (unsigned i = 0; i < 15; i++) {
    result ^= data[i] ^ (-(data[i] & 1) & 0x89);
    for (unsigned j = 0; j < 8; j++) {
      result = (result << 1) ^ ((result >> 7) & 0x12);
    }
  }
  return result | 1;
}

static void set_cid_or_csd(const char data[15], ptrdiff_t dest) {
  const unsigned char *p = (const unsigned char *)data;
  unsigned char crc = sd_crc7(data);
  WRITE_REG(dest, ((unsigned)p[0] << 24) | ((unsigned)p[1] << 16) |
                      ((unsigned)p[2] << 8) | p[3]);
  WRITE_REG(dest + 4, ((unsigned)p[4] << 24) | ((unsigned)p[5] << 16) |
                          ((unsigned)p[6] << 8) | p[7]);
  WRITE_REG(dest + 8, ((unsigned)p[8] << 24) | ((unsigned)p[9] << 16) |
                          ((unsigned)p[10] << 8) | p[11]);
  WRITE_REG(dest + 12, ((unsigned)p[12] << 24) | ((unsigned)p[13] << 16) |
                           ((unsigned)p[14] << 8) | crc);
}

static void set_card_capacity(void) {
  char csd[15];

  log_debug("Set capacity\n");

  if (!(flags & HOST_SUPPORTS_HIGH_CAPACITY)) {
    // todo implement standard capacity
    log_error("Standard capacity card not implemented\n");
    return;
  }

  if (capacity >= CAPACITY_LIMIT_HIGH_CAPACITY)
    capacity = CAPACITY_LIMIT_HIGH_CAPACITY;
  capacity &= ~(my_blkcnt_t)0x3ff;

  const char csd_default[15] = {0x40, 0x0e, 0x00, 0x32, 0x13, 0x59, 0x00, 0x00,
                                0x00, 0x00, 0x7f, 0x80, 0x0a, 0x40, 0x00};
  memcpy(csd, csd_default, sizeof(csd_default));

  uint32_t size1 = capacity - 1;
  csd[9] = size1 >> 10;
  csd[8] = size1 >> 18;
  csd[7] = size1 >> 26;

  set_cid_or_csd(csd, SD_CARD_REG_CSD);
  WRITE_REG(SD_CARD_REG_SIZE, size1);
  // Setting bit 31 allows the hardware to proceed
  WRITE_REG(SD_CARD_REG_OCR, OCR_VOLTAGE_WINDOW | 0xc0000000);
}

void sd_card_set_info(my_blkcnt_t capacity_blk, const char *cid) {
  flags |= GOT_INFO;
  capacity = capacity_blk;

  // CID is set directly in the hardware.  There is no need to
  // change it later.
  set_cid_or_csd(cid, SD_CARD_REG_CID);

  if (flags & GOT_ACMD41)
    set_card_capacity();
}

static void handle_events(uint32_t status) {
  uint32_t csr = READ_REG(SD_CARD_REG_CSR_READ);

  log_debug("Handle events status %08" PRIX32 " csr %08" PRIX32 "\n", status,
            csr);

  if (status & (1 << SD_CARD_REG_STATUS_SAVED_CMD_UNREAD))
    handle_command(status, csr);
  else if ((flags & EXPECTING_PRG) && csr_current_state(csr) == PRG)
    handle_prg(status, csr);

  if (status & (1 << SD_CARD_REG_STATUS_DAT_BLOCK_DONE))
    handle_block_done(status);
}

void sd_card_interrupt_handler(void) { handle_events(read_status()); }

// Write response on data lines

#define STREAM_PORT "rfsl0"

#define DATA_PATH_FROM_CPU_RESET 0
#define DATA_PATH_TO_CPU_RESET 1

static void write_resp_on_dat(const int *data) {
  log_debug("Write response dat %p\n", data);

  data_route_set(DATA_TO_INTF, DATA_FROM_CPU);
  data_route_commit();
  WRITE_REG(SD_CARD_REG_CONTROL, 1 << SD_CARD_REG_CONTROL_START_WRITE);
  enable_part(ENABLE_PART_SD_CARD_DATA_CPU, 1);

  for (int i = 2; --i >= 0;) {
    int x = *data++;

    while (1) {
      int failed;

      // The last word should have tlast set
      if (i == 0)
        asm volatile("ncput %1, " STREAM_PORT "\n\t"
                     "addc %0, r0, r0"
                     : "=d"(failed)
                     : "d"(x)
                     : "cc");
      else
        asm volatile("nput %1, " STREAM_PORT "\n\t"
                     "addc %0, r0, r0"
                     : "=d"(failed)
                     : "d"(x)
                     : "cc");

      if (failed) {
        // The write would block.  This could be because another command
        // interrupted the current command or because of congestion in the
        // data path.
        uint32_t status = read_status();
        if (!(status & (1 << SD_CARD_REG_STATUS_GOT_START_WRITE))) {
          // The interrupt flags are cleared when the status register is
          // read.  So events need to be checked for here.
          log_debug("DAT response interrupted\n");
          enable_part(ENABLE_PART_SD_CARD_DATA_CPU, 0);
          handle_events(status);
          return;
        }
        log_debug("DAT response busy\n");
      } else {
        // The word is written
        break;
      }
    }
  }

  enable_part(ENABLE_PART_SD_CARD_DATA_CPU, 0);
}

// Handle commands

static void handle_transfer_request(uint32_t csr, my_blkcnt_t blk_start,
                                    my_blkcnt_t blk_count, bool read);

static my_blkcnt_t find_block_count(uint32_t status, uint32_t arg);

static void transfer_callback(int err, my_blkcnt_t transferred);

static void null_callback(void) {};

#define INDEX_ACMD_BIT 0x40

static void handle_command(uint32_t status, uint32_t csr) {
  unsigned index =
      (READ_REG(SD_CARD_REG_CMD_INDEX) >> SD_CARD_REG_CMD_INDEX_SAVED) & 0x7f;
  uint32_t arg = READ_REG(SD_CARD_REG_SAVED_CMD_ARG);

  log_debug("Got command %X %08" PRIX32 "\n", index, arg);

  flags &= ~(TRANSFER | REQUEST_IS_READ | TRAN_NOTIFIER | EXPECTING_PRG);

  switch (index) {
  case 0:
    // Reset
    flags &= GOT_INFO;
    image_abort_transfer(null_callback);
    break;

  case 17:
    handle_transfer_request(csr, arg, 1, 1);
    break;
  case 18:
    handle_transfer_request(csr, arg, find_block_count(status, arg), 1);
    break;
  case 24:
    handle_transfer_request(csr, arg, 1, 0);
    break;
  case 25:
    handle_transfer_request(csr, arg, find_block_count(status, arg), 0);
    break;

  case INDEX_ACMD_BIT | 41: {
    int voltage_window = arg & 0xffff00;
    if (!voltage_window) {
      // When the OCR voltage window is 0, it is used to get our OCR.
      // The other bits are ignored in this case.
      break;
    }
    if (!(voltage_window & OCR_VOLTAGE_WINDOW)) {
      // Incompatible
      log_error("Got incompatible voltage window %08" PRIX32 "\n", arg);
      break;
    }

    flags |= GOT_ACMD41;
    if ((status & (1 << SD_CARD_REG_STATUS_GOT_CMD8)) && (arg & 0x40000000))
      flags |= HOST_SUPPORTS_HIGH_CAPACITY;

    if (flags & GOT_INFO)
      set_card_capacity();

    break;
  }

  case INDEX_ACMD_BIT | 51: {
    // Security field is set to no security now because it's not
    // implemented.  But since it is mandatory for writable cards, we
    // should probably add it later.
    //
    // Since data are transferred most significant byte first on the SD
    // bus but least significant byte first on AXI-Stream, endiness is
    // swapped in each word.
    const int scr[2] = {0x02840502, 0x00000000};
    write_resp_on_dat(scr);
    break;
  }
  }
}

static my_blkcnt_t find_block_count(uint32_t status, uint32_t arg) {
  if (status & (1 << SD_CARD_REG_STATUS_BLOCK_LIMIT_USED))
    return READ_REG(SD_CARD_REG_BLOCK_LIMIT);
  else
    // Overflow is checked later
    return capacity - arg;
}

static my_blkcnt_t tran_notifier_target;
static void (*tran_notifier_callback)(void);

static void handle_transfer_request(uint32_t csr, my_blkcnt_t blk_start,
                                    my_blkcnt_t blk_count, bool read) {
  log_debug("Request %s start %" PRIBLKCNT ", count %" PRIBLKCNT "\n",
            read ? "read" : "write", blk_start, blk_count);

  data_route_disable();

  if (blk_start >= capacity) {
    log_warn("Request start is beyond capacity %" PRIBLKCNT " %" PRIBLKCNT "\n",
             blk_start, capacity);
    WRITE_REG(SD_CARD_REG_CSR_SET_BITS, 1 << CSR_OUT_OF_RANGE);
    WRITE_REG(SD_CARD_REG_CONTROL, 1 << SD_CARD_REG_CONTROL_PROG_DONE);
    return;
  }

  // The hardware can read the first block of a write request without
  // the software.  If the request is a write and all blocks have been
  // read, we know how many blocks to transfer.

  // todo fix when 4G blocks are transferred and block count overflows

  if (!read && csr_current_state(csr) == PRG)
    blk_count = READ_REG(SD_CARD_REG_DAT_BLOCKS_TRANSFERRED);
  else
    flags |= EXPECTING_PRG;

  if (blk_count == 0)
    return;

  if (capacity - blk_start < blk_count) {
    log_warn("Request end is beyond capacity size %" PRIBLKCNT "\n", blk_count);
    blk_count = capacity - blk_start;
  }

  flags |= TRANSFER;
  if (read)
    flags |= REQUEST_IS_READ;

  int err = image_req(blk_start, blk_count, read, transfer_callback);
  if (err) {
    WRITE_REG(SD_CARD_REG_CSR_SET_BITS, 1 << CSR_ERROR);
    log_error("Got error requesting image access %d\n", err);
    return;
  }

  // A read request means to write data to the SD bus and vice versa.
  // The start read register bit means to start writing to AXI-Stream
  // what is read from the SD bus.  The start write bit means to start
  // writing to the SD bus.
  if (read) {
    data_route_set(DATA_TO_INTF, DATA_FROM_REST);
    WRITE_REG(SD_CARD_REG_CONTROL, 1 << SD_CARD_REG_CONTROL_START_WRITE);
  } else {
    data_route_set(DATA_TO_REST, DATA_FROM_INTF);
    WRITE_REG(SD_CARD_REG_CONTROL, 1 << SD_CARD_REG_CONTROL_START_READ);
  }
  data_route_commit();
}

static void handle_prg(uint32_t status,uint32_t csr) {
  flags &= ~EXPECTING_PRG;

// todo fix when 4G blocks are transferred and block count overflows

  my_blkcnt_t blk_count = READ_REG(SD_CARD_REG_DAT_BLOCKS_TRANSFERRED);
  image_write_change_block_count(blk_count);
}

static void transfer_callback(int err, my_blkcnt_t transferred) {
  if (!(flags & TRANSFER))
    return;

  if (err) {
    log_error("Got error requesting image access %d block count %" PRIBLKCNT
              "\n",
              err, transferred);
    WRITE_REG(SD_CARD_REG_CSR_SET_BITS, 1 << CSR_ERROR);
  } else
    log_info("Transfer done block count %" PRIBLKCNT "\n", transferred);

  if (!(flags & REQUEST_IS_READ))
    WRITE_REG(SD_CARD_REG_CONTROL, 1 << SD_CARD_REG_CONTROL_PROG_DONE);
}

static void handle_block_done(uint32_t status) {
  if (flags & TRAN_NOTIFIER) {
    uint32_t so_far = READ_REG(SD_CARD_REG_DAT_BLOCKS_TRANSFERRED);
    if (so_far >= tran_notifier_target) {
      flags &= ~TRAN_NOTIFIER;
      log_debug("Calling transfer notifier %" PRIBLKCNT " %" PRIu32 " %p\n",
                tran_notifier_target, so_far, tran_notifier_callback);
      (*tran_notifier_callback)();
    }
  }
}

void sd_card_set_tran_notifier(my_blkcnt_t blk_count, void (*cb)(void)) {
  if (!(flags & TRANSFER))
    return;

  tran_notifier_target = blk_count;
  tran_notifier_callback = cb;
  flags |= TRAN_NOTIFIER;
}
