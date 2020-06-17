#include "sd-host.h"
#include "axi_sd_host.h"
#include "disk.h"
#include "time.h"
#include "xintc_l.h"
#include "xparameters.h"
#include <inttypes.h>
#include <stdbool.h>
#include <stddef.h>
#include <string.h>

// The number of times to attempt card initialization before giving
// up. 0 for no limit.
#define INITIALIZATION_ATTEMPTS_MAX 3
// The number of times to attempt a transfer. 0 for no limit.
#define TRANSFER_ATTEMPTS_MAX 3
// The number of times to attempt a command. Trying indefinitely is not
// good. It is better to start from initialization after a limit.
#define COMMAND_ATTEMPTS_MAX 3

#define CMD8_ARG 0x1AA
#define ACMD41_ARG 0x01ff8000
#define TRAN_QUERY_INTERVAL FROM_MS(100.0)
#define ACMD41_TIMEOUT FROM_S(2.0)
#define PRG_TIMEOUT 0

#define WRITE_REG(addr, data)                                                  \
  AXI_SD_HOST_mWriteReg(XPAR_SD_HOST_S_AXI_BASEADDR, addr, data)

#define READ_REG(addr) AXI_SD_HOST_mReadReg(XPAR_SD_HOST_S_AXI_BASEADDR, addr)

// The first word is the index, the second word is the next 4 bytes of
// the response
#define READ_RESP() READ_REG(SD_HOST_REG_RESP + 4)

#define SET_TIMER(time, cb) set_timer_slot(TIMER_SLOT_SD_HOST, time, cb)
#define CLEAR_TIMER() clear_timer_slot(TIMER_SLOT_SD_HOST)

#define CSR_OUT_OF_RANGE 31
#define CSR_ADDRESS_ERROR 30
#define CSR_BLOCK_LEN_ERROR 29
#define CSR_ERASE_SEQ_ERROR 28
#define CSR_ERASE_PARAM 27
#define CSR_WP_VIOLATION 26
#define CSR_CARD_IS_LOCKED 25
#define CSR_LOCK_UNLOCK_FAILED 24
#define CSR_COM_CRC_ERROR 23
#define CSR_ILLEGAL_COMMAND 22
#define CSR_CARD_ECC_FAILED 21
#define CSR_CC_ERROR 20
#define CSR_ERROR 19
#define CSR_CSD_OVERWRITE 16
#define CSR_WP_ERASE_SKIP 15
#define CSR_CARD_ECC_DISABLED 14
#define CSR_ERASE_RESET 13
#define CSR_CURRENT_STATE_HIGH 12
#define CSR_CURRENT_STATE_LOW 9
#define CSR_READY_FOR_DATA 8
#define CSR_FX_EVENT 6
#define CSR_APP_CMD 5
#define CSR_AKE_SEQ_ERROR 3

static enum {
  INITIALIZED = 0x1,
  INITIALIZED_ONCE = 0x2,
  INITIALIZATION_FAILED = 0x4,
  GOT_CMD8_RESP = 0x8,
  SENT_FIRST_ACMD41 = 0x10,
  HIGH_CAPACITY = 0x20,
  READ = 0x40,
  TRAN_ENCRYPTED = 0x80,
  PRG_ALLOWED = 0x100,
  TRANSFER_STARTED = 0x200,
  TRAN_KEEP_DATA = 0x400,
  CALL_ON_BLOCK_DONE = 0x800
} flags;

static uint_fast16_t rca;

typedef struct sd_host_card_info_t {
  char cid[15];
  // Capacity in blocks
  my_blkcnt_t capacity;
} sd_host_card_info_t;

static struct sd_host_card_info_t card_info;

enum {
  IDLE,
  READY,
  IDENT,
  STBY,
  TRAN,
  DATA,
  RCV,
  PRG,
  DIS
} static csr_current_state(uint32_t csr) {
  return (csr >> 9) & 0xf;
}

static bool card_info_equal(const struct sd_host_card_info_t *a,
                            const struct sd_host_card_info_t *b) {
  return memcmp(a->cid, b->cid, sizeof(a->cid)) == 0 &&
         a->capacity == b->capacity;
}

// Events

typedef void (*event_handler_t)(int status);
static int event_mask;
static event_handler_t event_handler;

static void set_event_mask(int mask) {
  event_mask = mask;
  WRITE_REG(SD_HOST_REG_INTR_EN, mask);
}

void sd_host_interrupt_handler(void) {
  int status = READ_REG(SD_HOST_REG_STATUS);
  log_debug("status %08X response %08" PRIX32 " %08" PRIX32 " %08" PRIX32
            " %08" PRIX32 "\n",
            status, READ_REG(SD_HOST_REG_RESP), READ_REG(SD_HOST_REG_RESP + 4),
            READ_REG(SD_HOST_REG_RESP + 8), READ_REG(SD_HOST_REG_RESP + 12));
  if (status & event_mask)
    event_handler(status);
}

// Commands

/**
 * Send command
 *
 * @param index_rest The command index and flags
 * - `1 << SD_HOST_REG_CMD_REST_EXP_R2`
 * @param arg The command's argument
 */
static void send_cmd(uint32_t index_rest, uint32_t arg) {
  log_debug("send command %03" PRIX32 " %08" PRIX32 "\n", index_rest, arg);
  WRITE_REG(SD_HOST_REG_CMD_ARG, arg);
  WRITE_REG(SD_HOST_REG_CMD_REST, index_rest);
}

// ACMD

static int acmd_index;
static uint32_t acmd_arg;
static void (*acmd_success_callback)(int), (*acmd_failure_callback)(int);
static unsigned acmd_cmd55_attempts_left;

static void cmd55_handler(int status) {
  if (status & SD_HOST_REG_STATUS_CMD_ERR_ANY) {
    log_warn("Error in CMD55 %X\n", status);
    // Retry
    if (acmd_cmd55_attempts_left) {
      acmd_cmd55_attempts_left--;
      log_warn("Error in CMD55, retrying\n");
      send_cmd(55, (uint32_t)rca << 16);
    } else {
      log_error("Error in CMD55, no attempts left\n");
      acmd_failure_callback(status);
    }
  } else {
    event_handler = acmd_success_callback;
    send_cmd(acmd_index, acmd_arg);
  }
}

/**
 * Send ACMD. Send CMD55. If it succeeds, send the command and set the
 * interrupt handler to `handler`. Otherwise, call `failure_cb` with the
 * status register.
 *
 * @param index The command's index
 * @param arg The command's argument
 * @param handler The interrupt handler for the command
 * @param failure_cb Function to call when CMD55 fails
 */
static void send_acmd(int index, uint32_t arg, void (*success_cb)(int status),
                      void (*failure_cb)(int status)) {
  send_cmd(55, (uint32_t)rca << 16);
  acmd_index = index;
  acmd_arg = arg;
  acmd_success_callback = success_cb;
  acmd_failure_callback = failure_cb;
  acmd_cmd55_attempts_left = COMMAND_ATTEMPTS_MAX - 1;
  event_handler = cmd55_handler;
}

// Try command multiple times

#define RETRY_CMD_ACMD 0x80000000

static unsigned retry_cmd_attempts_left;
static int retry_cmd_index;
static uint32_t retry_cmd_arg;
static event_handler_t retry_cmd_callback;

static void retry_cmd_event_handler(int status);

static void retry_cmd_retry(void) {
  if (retry_cmd_index & RETRY_CMD_ACMD)
    send_acmd(retry_cmd_index & ~RETRY_CMD_ACMD, retry_cmd_arg,
              retry_cmd_event_handler, retry_cmd_callback);
  else
    send_cmd(retry_cmd_index, retry_cmd_arg);
}

static void retry_cmd_event_handler(int status) {
  // Check for errors. An index error without a CRC error probably isn't
  // a transient line error. We let upper layers handle it.
  if (status & ((1 << SD_HOST_REG_STATUS_CMD_ERR_CRC) |
                (1 << SD_HOST_REG_STATUS_CMD_ERR_END_BIT) |
                (1 << SD_HOST_REG_STATUS_CMD_ERR_TIMEOUT))) {
    if (retry_cmd_attempts_left) {
      // Retry
      retry_cmd_attempts_left--;
      log_debug("Bad response to command %u %08" PRIX32 " %08X, retrying\n",
                retry_cmd_index, retry_cmd_arg, status);
      retry_cmd_retry();
    } else {
      // Give up
      log_warn("Bad response to command %u %08" PRIX32
               " %08X, no retries left\n",
               retry_cmd_index, retry_cmd_arg, status);
      retry_cmd_callback(status);
    }
  } else {
    // Success
    retry_cmd_callback(status);
  }
}

/**
 * Send command up to `COMMAND_ATTEMPTS_MAX` times or until successful.
 */
static void send_cmd_retries(int index, uint32_t arg, event_handler_t cb) {
  retry_cmd_attempts_left = COMMAND_ATTEMPTS_MAX - 1;
  retry_cmd_index = index;
  retry_cmd_arg = arg;
  retry_cmd_callback = cb;
  event_handler = retry_cmd_event_handler;
  retry_cmd_retry();
}

// CMD13

static void send_cmd13(event_handler_t cb) {
  send_cmd_retries(13, (uint32_t)rca << 16, cb);
}

static void send_cmd13_no_retries(void) { send_cmd(13, (uint32_t)rca << 16); }

// Initialization

#if INITIALIZATION_ATTEMPTS_MAX
static unsigned init_attempts_left;
#endif
static struct sd_host_card_info_t card_info_old;
static my_time_t init_acmd41_deadline;
static void (*init_done_callback)(int);

static void init_start(void (*)(int));
static void init_retry(void);
static void init_step_1(int status);
static void init_step_2(int status);
static void init_step_3(int status);
static void init_step_4(int status);
static void init_step_5(int status);
static void init_step_6(int status);
static void init_step_7(int status);
static void init_step_8(int status);
static void init_step_9(int status);

void sd_host_initialize(void (*cb)(int)) {
  CLEAR_TIMER();
  // Disable DAT module
  WRITE_REG(SD_HOST_REG_DAT_CTRL, 0);
  // Read status register to clear any interrupt flags
  READ_REG(SD_HOST_REG_STATUS);

  flags = 0;

  init_start(cb);
}

static void init_start(void (*cb)(int)) {
  init_done_callback = cb;
#if INITIALIZATION_ATTEMPTS_MAX
  init_attempts_left = INITIALIZATION_ATTEMPTS_MAX;
#endif
  init_retry();
}

static void init_retry(void) {
#if INITIALIZATION_ATTEMPTS_MAX
  if (!init_attempts_left) {
    log_error("No initialization attempts left\n");
    flags |= INITIALIZATION_FAILED;
    init_done_callback(SD_HOST_INITIALIZATION_FAILURE);
    return;
  }

  init_attempts_left--;
#endif

  log_info("Initialize SD card\n");

  flags &= INITIALIZED_ONCE | READ | CALL_ON_BLOCK_DONE | TRAN_KEEP_DATA;
  rca = 0;

  // Set clock frequency
  WRITE_REG(SD_HOST_REG_SETTINGS,
            SD_HOST_REG_SETTINGS_CLK_400K << SD_HOST_REG_SETTINGS_CLK);

  set_event_mask(1 << SD_HOST_REG_STATUS_CMD_DONE);
  event_handler = init_step_1;
  send_cmd(0, 0);
}

#define INIT_COMMON(ALLOWED_ERRORS)                                            \
  if (status & (SD_HOST_REG_STATUS_CMD_ERR_ANY & ~(ALLOWED_ERRORS))) {         \
    init_handle_error(status);                                                 \
    return;                                                                    \
  }

static void init_handle_error(int status) {
  log_error("Error initializing SD card, status %08X, retrying\n", status);
  init_retry();
}

static void init_step_1(int status) {
  event_handler = init_step_2;
  send_cmd(8, CMD8_ARG);
}

static void init_step_2(int status) {
  INIT_COMMON(1 << SD_HOST_REG_STATUS_CMD_ERR_TIMEOUT);

  if (status & (1 << SD_HOST_REG_STATUS_CMD_ERR_TIMEOUT)) {
    log_info("No response to CMD8\n");
  } else {
    uint32_t resp = READ_RESP();
    if ((resp & 0xfff) != CMD8_ARG) {
      log_error("bad response to CMD8, %08" PRIX32 "\n", resp);
      init_done_callback(SD_HOST_BAD_CARD);
      return;
    }
    flags |= GOT_CMD8_RESP;
  }

  // Inquiry ACMD41
  send_acmd(41,
            (ACMD41_ARG & 0xff0000ff) |
                ((flags & GOT_CMD8_RESP) ? 0x40000000 : 0),
            init_step_3, init_handle_error);
}

static void init_step_3(int status) {
  INIT_COMMON((1 << SD_HOST_REG_STATUS_CMD_ERR_INDEX) |
              (1 << SD_HOST_REG_STATUS_CMD_ERR_CRC));

  uint32_t resp = READ_RESP();

  if (flags & SENT_FIRST_ACMD41) {
    if (resp & 0x80000000) {
      // Initialization done
      if (resp & 0x40000000)
        flags |= HIGH_CAPACITY;
      send_cmd_retries((1 << SD_HOST_REG_CMD_REST_EXP_R2) | 2, 0, init_step_4);
      return;
    } else if (is_it_already(init_acmd41_deadline)) {
      log_error("ACMD41 timeout, retrying\n");
      init_retry();
      return;
    }
  } else {
    // Inquiry ACMD41
    if (!(resp & ACMD41_ARG & 0x00ffff00)) {
      log_error("Card has incompatible voltage range %08" PRIX32 "\n", resp);
      init_done_callback(SD_HOST_BAD_CARD);
      return;
    }
  }

  // Set timeout
  if (!(flags & SENT_FIRST_ACMD41)) {
    flags |= SENT_FIRST_ACMD41;
    init_acmd41_deadline = gettime() + ACMD41_TIMEOUT;
  }

  send_acmd(41, ACMD41_ARG | ((flags & GOT_CMD8_RESP) ? 0x40000000 : 0),
            init_step_3, init_handle_error);
}

static void init_step_4(int status) {
  INIT_COMMON(1 << SD_HOST_REG_STATUS_CMD_ERR_INDEX);

  // The response registers, which contain the R2 response from the
  // first byte 0x3F to the byte before the CRC. CRC is checked by the
  // hardware.
  uint32_t resp[4];
  // Read response, `memcpy`'s parameters are not volatile
  for (unsigned i = 0; i < 4; i++)
    resp[i] = READ_REG(SD_HOST_REG_RESP + 4 * i);
  log_info("CID %06" PRIX32 "%08" PRIX32 "%08" PRIX32 "%08" PRIX32 "\n",
           resp[0] & 0xffffff, resp[1], resp[2], resp[3]);

  card_info.cid[0] = resp[0];
  card_info.cid[1] = resp[0] >> 8;
  card_info.cid[2] = resp[0] >> 16;
  card_info.cid[3] = resp[1];
  card_info.cid[4] = resp[1] >> 8;
  card_info.cid[5] = resp[1] >> 16;
  card_info.cid[6] = resp[1] >> 24;
  card_info.cid[7] = resp[2];
  card_info.cid[8] = resp[2] >> 8;
  card_info.cid[9] = resp[2] >> 16;
  card_info.cid[10] = resp[2] >> 24;
  card_info.cid[11] = resp[3];
  card_info.cid[12] = resp[3] >> 8;
  card_info.cid[13] = resp[3] >> 16;
  card_info.cid[14] = resp[3] >> 24;

  send_cmd_retries(3, 0, init_step_5);
}

static void init_step_5(int status) {
  INIT_COMMON(0);

  uint_fast16_t new_rca = READ_RESP() >> 16;
  log_info("RCA %04" PRIXFAST16 "\n", new_rca);
  if (new_rca == 0) {
    // Retry. To prevent repeating indefinitely, change the saved RCA
    // from the initial 0.
    if (rca != 0) {
      log_error("Got RCA 0 twice, restarting initialization\n");
      init_retry();
    } else {
      rca = -1;
      log_info("Got RCA 0, retrying\n");
      send_cmd_retries(3, 0, init_step_5);
    }
    return;
  }
  rca = new_rca;

  // Set clock frequency
  WRITE_REG(SD_HOST_REG_SETTINGS,
            SD_HOST_REG_SETTINGS_CLK_25M << SD_HOST_REG_SETTINGS_CLK);

  send_cmd_retries((1 << SD_HOST_REG_CMD_REST_EXP_R2) | 9,
                   (uint32_t)new_rca << 16, init_step_6);
}

static void init_step_6(int status) {
  INIT_COMMON(1 << SD_HOST_REG_STATUS_CMD_ERR_INDEX);

  uint32_t resp[4];
  for (unsigned i = 0; i < 4; i++)
    resp[i] = READ_REG(SD_HOST_REG_RESP + 4 * i);
  log_info("CSD %06" PRIX32 "%08" PRIX32 "%08" PRIX32 "%08" PRIX32 "\n",
           resp[0], resp[1], resp[2], resp[3]);

  // Check the high capacity bit is as expected
  unsigned csd_version = (resp[0] >> 22) & 3;
  if (csd_version != ((flags & HIGH_CAPACITY) ? 1 : 0)) {
    log_error("High capacity indicated in CSD and in OCR do not match.\n");
    init_done_callback(SD_HOST_BAD_CARD);
    return;
  }

  // Extract capacity
  switch (csd_version) {
  case 0: {
    // CSD version 1.0, standard capacity
    unsigned read_bl_len, c_size, c_size_mult;
    read_bl_len = (resp[1] >> 8) & 0xf;
    c_size = ((resp[2] >> 22) & 0x3ff) | ((resp[1] << 10) & 0xc00);
    c_size_mult = (resp[2] >> 7) & 0x7;
    if (!(read_bl_len >= 9 && read_bl_len <= 11)) {
      log_error("Bad CSD, READ_BL_LEN is %u\n", read_bl_len);
      init_done_callback(SD_HOST_BAD_CARD);
      return;
    }
    card_info.capacity = (c_size + 1) << (c_size_mult + read_bl_len - 7);
    break;
  }
  case 1:
    // CSD version 2.0, high capacity
    card_info.capacity = ((my_blkcnt_t)(resp[2] & 0x3fffff00) << 2) + 0x400;
    break;
  default:
    log_error("Unrecognized CSD version %u\n", csd_version);
    init_done_callback(SD_HOST_BAD_CARD);
    return;
  }

  log_info("Card capacity %" PRIBLKCNT " blocks\n", card_info.capacity);

  // Select card
  send_cmd_retries(7, (uint32_t)rca << 16, init_step_7);
}

static void init_step_7(int status) {
  INIT_COMMON(0);

  // Set DAT line width
  send_cmd_retries(RETRY_CMD_ACMD | 6, 2, init_step_8);
}

static void init_step_8(int status) {
  INIT_COMMON(0);

  send_cmd_retries(13, (uint32_t)rca << 16, init_step_9);
}

static void init_step_9(int status) {
  INIT_COMMON(0);

  // Initialized

  log_info("Card initialized\n");

  // Check whether card has changed
  if (flags & INITIALIZED_ONCE) {
    if (!card_info_equal(&card_info, &card_info_old)) {
      log_error("Error in initialization, card changed\n");
      init_done_callback(SD_HOST_REINITIALIZATION_CARD_CHANGED);
      return;
    }
  } else {
    card_info_old = card_info;
  }

  flags |= INITIALIZED | INITIALIZED_ONCE;

  init_done_callback(SUCCESS);
}

// Get capacity

my_blkcnt_t disk_get_capacity(void) { return card_info.capacity; }

// Stop data transfer

static void (*stop_tran_cb)(int);
static unsigned stop_tran_cmd12_attempts_left;

static void stop_tran_retry(void);
static void stop_tran_step_1(int status);
static void stop_tran_step_2(int status);
static void stop_tran_step_3(int status);
static void stop_tran_timeout_cb(void);
static void stop_tran_init_cb(int);
static void stop_tran_success(void);

/**
 * Stop the current data transfer if any. This function does not disable
 * the DAT module or reset the switch, because it's unknown whether
 * resumption of data transfer is needed. The caller should take care of
 * it and prevent the DAT module from stopping the clock.
 *
 * @param cb function to call when done
 */
static void stop_tran(void (*cb)(int)) {
  set_event_mask(1 << SD_HOST_REG_STATUS_CMD_DONE);
  event_handler = stop_tran_step_1;
  stop_tran_cb = cb;
  stop_tran_cmd12_attempts_left = COMMAND_ATTEMPTS_MAX - 1;

  CLEAR_TIMER();

  // Send the stop command
  send_cmd(12, 0);
}

static void stop_tran_step_1(int status) {
  // CMD12 may be invalid. The response is not checked.
  // Query status
  send_cmd13(stop_tran_step_2);
}

static void stop_tran_step_2(int status) {
  if (status & SD_HOST_REG_STATUS_CMD_ERR_ANY)
    goto failure;

  // Check the state is as expected
  int card_state = csr_current_state(READ_RESP());
  bool busy = !(status & (1 << SD_HOST_REG_STATUS_DAT_BUSY_CLEARED));

  switch (card_state) {
  case TRAN:
    if (busy) {
      // The busy signal used is that when the status register was read,
      // when the card has already gone into state TRAN.
      log_error("Busy indicated in TRAN\n");
      break;
    } else
      stop_tran_step_3(status);
    return;

  case PRG:
    // We only verify that a PRG state is as expected, mostly for
    // convenience (laziness). It is the only state that means waiting
    // indefinitely for the busy signal to clear. Other states are
    // mostly harmless.
    if (!(flags & PRG_ALLOWED)) {
      log_error("Unexpected PRG\n");
      break;
    }
    // Wait until the busy signal is cleared
    if (busy) {
      set_event_mask(1 << SD_HOST_REG_STATUS_DAT_BUSY_CLEARED_NEW);
      event_handler = stop_tran_step_3;
      if (PRG_TIMEOUT)
        SET_TIMER(gettime() + PRG_TIMEOUT, stop_tran_timeout_cb);
    } else
      stop_tran_step_3(status);
    return;

  case DATA:
  case RCV:
    log_error("CMD12 failed, got state %u\n", card_state);
    // Retry stopping the transfer
    if (stop_tran_cmd12_attempts_left) {
      stop_tran_cmd12_attempts_left--;
      log_error("CMD12 failed, retrying\n");
      send_cmd_retries(12, 0, stop_tran_step_1);
      return;
    } else
      log_error("CMD12 failed, no retries left\n");
    break;

  default:
    log_error("Got unexpected card state %u\n", card_state);
  }

failure:
  log_error("Failure to stop data transfer status %08X\n", status);
  stop_tran_retry();
}

static void stop_tran_step_3(int status) {
  CLEAR_TIMER();
  // Done
  stop_tran_success();
}

static void stop_tran_timeout_cb(void) {
  log_error(
      "Failure to stop data transfer. Timed out waiting for busy to clear.\n");
  stop_tran_retry();
}

static void stop_tran_retry(void) {
  log_error("Failure to stop data transfer, trying initialization\n");
  init_start(stop_tran_init_cb);
}

static void stop_tran_init_cb(int error) {
  if (error != SUCCESS) {
    log_error("Failure to stop data transfer by initialization %d\n", error);
    stop_tran_cb(error);
  } else {
    log_info("Stopped data transfer by initialization\n");
    stop_tran_success();
  }
}

static void stop_tran_success(void) {
  flags &= ~PRG_ALLOWED;
  stop_tran_cb(SUCCESS);
}

// Data switch configuration

static void set_up_switch(int port) {
  if (flags & READ) {
    if (flags & TRAN_ENCRYPTED) {
      sd_host_route_set(port, SD_HOST_FROM_CRYPT);
      sd_host_route_set(SD_HOST_TO_CRYPT, SD_HOST_FROM_INTF);
    } else {
      sd_host_route_set(port, SD_HOST_FROM_INTF);
    }
  } else {
    if (flags & TRAN_ENCRYPTED) {
      sd_host_route_set(SD_HOST_TO_INTF, SD_HOST_FROM_CRYPT);
      sd_host_route_set(SD_HOST_TO_CRYPT, port);
    } else {
      sd_host_route_set(SD_HOST_TO_INTF, port);
    }
  }
  sd_host_route_commit();
}

void disk_write_change_port(int port) {
  sd_host_route_set(flags & TRAN_ENCRYPTED ? SD_HOST_TO_CRYPT : SD_HOST_TO_INTF,
                    port);
  sd_host_route_commit();
}

// Data transfers

#if TRANSFER_ATTEMPTS_MAX
static unsigned tran_attempts_left;
#endif
// Offset and block count of the current request. If an error occurs
// during a transfer and what remains of the transfer is retried, they
// stay the same.
static my_blkcnt_t tran_offset, tran_count;
// The `transferred` parameter the last time `cb` was called.
static my_blkcnt_t tran_done_last_called;
// The number of blocks already transferred in the current request
// before the current transfer has started. It starts at 0 when a
// request is initiated. When an error occurs and what remains of the
// transfer is retried, it is set to the number of successfully
// transferred blocks.
static my_blkcnt_t tran_done_prev;
static void (*tran_callback)(int err, my_blkcnt_t transferred);
static unsigned tran_query_attempts_left;

static void tran_set_block_count(int error);
static void tran_send_cmd(int status);
static void tran_verify_started(int status);
static void tran_event_handler(int status);
static void tran_done_check(int status);

static void tran_call_cb(int error, my_blkcnt_t transferred) {
  log_debug("Calling callback %p %d %" PRIBLKCNT "\n", tran_callback, error,
            transferred);
  (*tran_callback)(error, transferred);
}

int disk_tran(my_blkcnt_t offset, my_blkcnt_t count, int port,
              void (*cb)(int, my_blkcnt_t), int tran_flags) {
#if TRANSFER_ATTEMPTS_MAX
  tran_attempts_left = TRANSFER_ATTEMPTS_MAX - 1;
#endif
  tran_offset = offset;
  tran_count = count == 0 ? card_info.capacity - offset : count;
  tran_done_last_called = 0;
  tran_done_prev = 0;
  tran_callback = cb;
  flags =
      (flags & ~(READ | TRAN_ENCRYPTED | TRAN_KEEP_DATA | TRANSFER_STARTED |
                 CALL_ON_BLOCK_DONE)) |
      ((tran_flags & DISK_TRAN_READ) ? READ : 0) |
      ((tran_flags & DISK_TRAN_ENCRYPTED) ? TRAN_ENCRYPTED : 0) |
      ((tran_flags & DISK_TRAN_CALL_ON_BLOCK_DONE) ? CALL_ON_BLOCK_DONE : 0);

  log_debug("Transfer %s %" PRIBLKCNT " %" PRIBLKCNT "\n",
            (tran_flags & DISK_TRAN_READ) ? "read" : "write", offset, count);

  CLEAR_TIMER();

  sd_host_route_disable();
  WRITE_REG(SD_HOST_REG_DAT_CTRL, 0);

  // If initialization is not done, wait until it is done.
  if (flags & INITIALIZATION_FAILED)
    return SD_HOST_INITIALIZATION_FAILURE;
  else if (flags & INITIALIZED) {
    // Check the arguments are in range.
    if (offset >= card_info.capacity || card_info.capacity - offset < count) {
      log_error("Attempt to access data beyond capacity\n");
      return OUT_OF_RANGE;
    } else
      stop_tran(tran_set_block_count);
  } else
    init_done_callback = tran_set_block_count;

  set_up_switch(port);

  return SUCCESS;
}

static void tran_set_block_count(int error) {
  if (error != SUCCESS) {
    log_error(
        "Failure to stop the current data transfer before new transfer\n");
    tran_call_cb(SD_HOST_CANT_STOP_TRANSFER, tran_done_prev);
    return;
  }

  set_event_mask(1 << SD_HOST_REG_STATUS_CMD_DONE);

  // Set block count
  my_blkcnt_t count = tran_count - tran_done_prev;

  if ((flags & HIGH_CAPACITY) && count != 0) {
    event_handler = tran_send_cmd;
    send_cmd(23, count);
  } else
    tran_send_cmd(0);
}

static void tran_start_dat(int fl) {
  WRITE_REG(SD_HOST_REG_DAT_BLOCK_COUNT_IN, tran_count);
  WRITE_REG(
      SD_HOST_REG_DAT_CTRL,
      fl | (1 << SD_HOST_REG_DAT_CTRL_ENABLED) |
          ((flags & TRAN_KEEP_DATA) ? (1 << SD_HOST_REG_DAT_CTRL_KEEP_DATA)
                                    : 0) |
          (tran_count ? (1 << SD_HOST_REG_DAT_CTRL_BLOCK_COUNT_USED) : 0));

  flags &= ~TRAN_KEEP_DATA;
}

static void tran_send_cmd(int status) {
  // The response is not checked. Maybe the card doesn't support CMD23.

  if (!(flags & READ))
    flags |= PRG_ALLOWED;
  else
    tran_start_dat(1 << SD_HOST_REG_DAT_CTRL_READ_MODE);

  // Send command
  event_handler = tran_verify_started;
  send_cmd((flags & READ) ? 18 : 25,
           (flags & HIGH_CAPACITY) ? tran_offset : tran_offset << 9);
}

static void tran_verify_started(int status) {
  if (status & SD_HOST_REG_STATUS_CMD_ERR_ANY) {
    log_error("Failure to start transfer %08X\n", status);

    // Retry. Because we don't know whether the command has taken
    // effect, start from stopping the current transfer.

#if TRANSFER_ATTEMPTS_MAX
    if (!tran_attempts_left) {
      log_error("Failure to start transfer, no more attempts left\n");
      tran_call_cb(SD_HOST_CANT_STOP_TRANSFER, tran_done_prev);
      return;
    }
    tran_attempts_left--;
#endif

    log_error("Failure to start transfer, retrying\n");
    stop_tran(tran_set_block_count);
    return;
  }

  flags |= TRANSFER_STARTED;

  if (!(flags & READ))
    tran_start_dat(0);

  // We don't want to rely on assumptions regarding how long other
  // processes will take. In the unlikely scenario that the transaction
  // is a read, and processes after `tran_send_cmd` exits and before
  // this function starts take so long that the card has sent enough
  // data to fill the host's FIFO, the hardware will handle this by
  // having the clock stopped until data is read from the FIFO. Commands
  // will be held. Thus we tell the client to start reading before
  // waiting for any other command to finish.

  // Set up event handlers
  set_event_mask((1 << SD_HOST_REG_STATUS_CMD_DONE) |
                 (1 << SD_HOST_REG_STATUS_DAT_DONE) |
                 (1 << SD_HOST_REG_STATUS_DAT_BLOCK_DONE));
  event_handler = tran_event_handler;

  // The retry mechanism in `send_cmd_retries` doesn't handle events
  // from the DAT module. Retry manually.
  send_cmd13_no_retries();

  tran_call_cb(SUCCESS,
               tran_done_prev + READ_REG(SD_HOST_REG_DAT_BLOCK_COUNT_SUCCESS));
}

static void all_blocks_transferred(void) {
  log_debug("All blocks transferred\n");
  set_event_mask(1 << SD_HOST_REG_STATUS_CMD_DONE);
  send_cmd13(tran_done_check);
}

static void tran_event_handler_dat(int status, my_blkcnt_t so_far) {
  int dat_err = (status >> SD_HOST_REG_STATUS_DAT_ERROR_CODE) &
                ((1 << SD_HOST_DAT_ERROR_WIDTH) - 1);

  tran_done_prev += so_far;

  switch (dat_err) {
  case SD_HOST_DAT_ERROR_SUCCESS:
    all_blocks_transferred();
    break;

  case SD_HOST_DAT_ERROR_WRITE_RESP_TIMEOUT:
  case SD_HOST_DAT_ERROR_WRITE_BAD_RESP:
    if (flags & READ)
      goto unexpected;
    else
      goto retry_transfer;
  case SD_HOST_DAT_ERROR_READ_DATA_NOT_ACCEPTED:
  case SD_HOST_DAT_ERROR_READ_BAD_CRC:
    if (!(flags & READ))
      goto unexpected;

  retry_transfer:
    // Error in transfer, retry
    // There is no limit to the number of retries.  Because many
    // transfer errors may happen as the number of blocks grows.
    // However, we can limit retries per block.
    flags |= TRAN_KEEP_DATA;
    log_warn("Error in data transfer %u, transferred %" PRIBLKCNT " retrying\n",
             dat_err, tran_done_prev);
    WRITE_REG(
        SD_HOST_REG_DAT_CTRL,
        (1 << SD_HOST_REG_DAT_CTRL_KEEP_DATA) |
            (1 << SD_HOST_REG_DAT_CTRL_READ_MODE) |
            (tran_count ? (1 << SD_HOST_REG_DAT_CTRL_BLOCK_COUNT_USED) : 0));
    stop_tran(tran_set_block_count);
    break;

  default:
  unexpected:
    // This shouldn't happen
    log_error("Got unexpected DAT error %u\n", dat_err);
    abort();
  }
}

static int tran_event_handler_cmd(int status, my_blkcnt_t so_far) {
  uint32_t resp = READ_RESP();

  if (resp & ((1 << CSR_OUT_OF_RANGE) | (1 << CSR_ADDRESS_ERROR) |
              (1 << CSR_BLOCK_LEN_ERROR) | (1 << CSR_ERASE_SEQ_ERROR) |
              (1 << CSR_ERASE_PARAM) | (1 << CSR_WP_VIOLATION))) {
    // Some unexpected error
    log_error("Unexpected error in data transfer %08" PRIX32 "\n", resp);
    return SD_HOST_REJECTED_BY_CARD;
  } else if (resp & ((1 << CSR_CARD_ECC_FAILED) | (1 << CSR_CC_ERROR) |
                     (1 << CSR_ERROR))) {
    // Card error
    log_error("Card gave error in data transfer %08" PRIX32 "\n", resp);
    return SD_HOST_CARD_ERROR;
  } else {
    int state = csr_current_state(resp);
    switch (state) {
    case PRG:
      if (flags & READ)
        goto invalid_state;
      // @fallthrough@
    case TRAN:
      // This function wouldn't be called if the correct number of
      // blocks were transferred.
      log_error("Card ended data transfer early, actual %" PRIBLKCNT
                ", expected %" PRIBLKCNT "\n",
                tran_done_prev + so_far, tran_count);
      return SD_HOST_TRANSFER_STOPPED_EARLY;
      break;

    case DATA:
      if (!(flags & READ))
        goto invalid_state;
      break;

    case RCV:
      if (flags & READ)
        goto invalid_state;
      break;

    default:
    invalid_state:
      log_error("Got unexpected state in data transfer %u\n", state);
      return SD_HOST_CARD_ERROR;
    }
  }

  return SUCCESS;
}

static void tran_event_handler(int status) {
  int error = SUCCESS;
  my_blkcnt_t so_far = READ_REG(SD_HOST_REG_DAT_BLOCK_COUNT_SUCCESS);

  CLEAR_TIMER();

  log_debug("Transfer so far %" PRIBLKCNT " total %" PRIBLKCNT "\n", so_far,
            so_far + tran_done_prev);

  // Check the DAT module first. This is because bit errors on the DAT
  // lines will probably cause the DAT module to indicate an error, and
  // this way we can treat errors in the card status without errors from
  // the DAT module as unexpected and let upper layers handle it.  The
  // done bit is cleared on read.  It should only be high once in a
  // transfer.

  if (status & (1 << SD_HOST_REG_STATUS_DAT_DONE)) {
    flags &= ~TRANSFER_STARTED;
    tran_event_handler_dat(status, so_far);
    // Return.  Wait until the CMD13 response is received before calling
    // the callback.
    return;
  }

  // Because the block count may be changed later, and the hardware
  // block count can't be changed midway, the done bit from the status
  // register may be low when transfer is complete.
  //
  // The card may have at most 4G blocks.  Thus the block counter
  // overflowing means all blocks are transferred.

  if ((status & (1 << SD_HOST_REG_STATUS_DAT_BLOCK_COUNT_SUCCESS_OVERFLOW)) ||
      tran_done_prev + so_far >= tran_count) {
    flags &= ~TRANSFER_STARTED;
    tran_done_prev += so_far;
    WRITE_REG(SD_HOST_REG_DAT_CTRL, 0);
    all_blocks_transferred();
    return;
  }

  // Check the result of CMD13
  if (status & (1 << SD_HOST_REG_STATUS_CMD_DONE)) {
    if (status & SD_HOST_REG_STATUS_CMD_ERR_ANY) {
      log_warn("Error querying status in transfer %X\n", status);
      if (tran_query_attempts_left) {
        tran_query_attempts_left--;
        log_warn("Error querying status in transfer, retrying\n");
        send_cmd13_no_retries();
      } else {
        log_warn("Error querying status in transfer, no retries left\n");
        error = SD_HOST_TIMEOUT;
      }
    } else {
      tran_query_attempts_left = COMMAND_ATTEMPTS_MAX - 1;
      error = tran_event_handler_cmd(status, so_far);
    }
  }

  // Set timer to query card status
  if (error == SUCCESS)
    SET_TIMER(gettime() + TRAN_QUERY_INTERVAL, send_cmd13_no_retries);

  // Notify the client
  if (error != SUCCESS || (flags & CALL_ON_BLOCK_DONE)) {
    so_far += tran_done_prev;
    bool changed = so_far != tran_done_last_called;
    tran_done_last_called = so_far;
    if (error || changed)
      tran_call_cb(error, so_far);
  }
}

static void tran_done_check(int status) {
  int error;
  if (status & SD_HOST_REG_STATUS_CMD_ERR_ANY) {
    log_warn("Error querying status in transfer, no retries left, %08X\n",
             status);
    error = SD_HOST_TIMEOUT;
  } else {
    error = SUCCESS;
  }
  tran_call_cb(error, tran_done_prev);
}

static void null_handler(int discard) {}

void disk_tran_abort(void) {
  flags &= ~(READ | TRAN_KEEP_DATA | CALL_ON_BLOCK_DONE);

  CLEAR_TIMER();

  sd_host_route_disable();
  WRITE_REG(SD_HOST_REG_DAT_CTRL, 0);

  // If initialization is not done, wait until it is done.
  if (flags & INITIALIZATION_FAILED) {
    log_error("Got stop transfer request, but initialization failed\n");
  } else if (flags & INITIALIZED) {
    stop_tran(null_handler);
  }
}

void disk_tran_change_callback(void (*cb)(int error, my_blkcnt_t transferred)) {
  tran_callback = cb;
}

void disk_tran_change_block_count(my_blkcnt_t count) {
  log_debug("Change block count to %" PRIBLKCNT " from %" PRIBLKCNT "\n", count,
            tran_count);
  // Only decreasing block count is allowed
  if (count > tran_count)
    return;

  // The block count register is not changed because the hardware
  // doesn't changing it midway.

  tran_count = count;

  if (flags & TRANSFER_STARTED) {
    // This function checks whether the transfer is complete even with
    // no events.
    tran_event_handler(READ_REG(SD_HOST_REG_STATUS));
  }
}
