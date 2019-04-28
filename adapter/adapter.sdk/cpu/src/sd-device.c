#include "axi_sd.h"
#include "events.h"
#include "microblaze_sleep.h"
#include "platform.h"
#include "sd-device.h"
#include "xil_io.h"
#include <inttypes.h>

#define RCA_DEFAULT 0xAAAA

#define CSR_OUT_OF_RANGE (1u << 31)
#define CSR_ADDRESS_ERROR (1u << 30)
#define CSR_BLOCK_LEN_ERROR (1u << 29)
#define CSR_ERASE_SEQ_ERROR (1u << 28)
#define CSR_ERASE_PARAM (1u << 27)
#define CSR_WP_VIOLATION (1u << 26)
#define CSR_CARD_IS_LOCKED (1u << 25)
#define CSR_LOCK_UNLOCK_FAILED (1u << 24)
#define CSR_COM_CRC_ERROR (1u << 23)
#define CSR_ILLEGAL_COMMAND (1u << 22)
#define CSR_CARD_ECC_FAILED (1u << 21)
#define CSR_CC_ERROR (1u << 20)
#define CSR_ERROR (1u << 19)
#define CSR_CSD_OVERWRITE (1u << 16)
#define CSR_WP_ERASE_SKIP (1u << 15)
#define CSR_CARD_ECC_DISABLED (1u << 14)
#define CSR_ERASE_RESET (1u << 13)
#define CSR_READY_FOR_DATA (1u << 8)
#define CSR_FX_EVENT (1u << 6)
#define CSR_APP_CMD (1u << 5)
#define CSR_AKE_SEQ_ERROR (1u << 3)

#define SD_STATE_IDLE 0
#define SD_STATE_READY 1
#define SD_STATE_IDENT 2
#define SD_STATE_STBY 3
#define SD_STATE_TRAN 4
#define SD_STATE_DATA 5
#define SD_STATE_RCV 6
#define SD_STATE_PRG 7
#define SD_STATE_DIS 8

#define SD_STATE ((csr >> 9) & 0xf)

#define IF_BASEADDR XPAR_AXI_SD_0_S_AXI_BASEADDR

static inline void handle_command_received(uint32_t sd_if_status);

static inline void handle_write_buf_not_full(uint32_t sd_if_status);

void sd_device_intr_handler(void) {
  uint32_t sd_if_status = AXI_SD_mReadReg(IF_BASEADDR, AXI_SD_STATUS_OFFSET);

  switch (sd_status_state(sd_if_status)) {
  case AXI_SD_STATE_IDLE:
    break;

  case AXI_SD_STATE_CMD_RECEIVED:
    handle_command_received(sd_if_status);
    break;

  case AXI_SD_STATE_WRITING_BUF_NOT_FULL:
    handle_write_buf_not_full(sd_if_status);
    break;

  case AXI_SD_STATE_WRITING_BUF_FULL:
    break;
  }

  uint32_t arg = AXI_SD_mReadReg(IF_BASEADDR, AXI_SD_CMD_RX_ARG_OFFSET);

  event_new((event_t){
      .type = event_sd_device_got_cmd,
      .payload =
          {
              .sd_device =
                  {
                      .status_reg = sd_if_status,
                      .rx_arg_reg = arg,
                      .tx_ctrl_reg = AXI_SD_mReadReg(IF_BASEADDR,
                                                     AXI_SD_CMD_TX_CTRL_OFFSET),
                  },
          },
  });
}

#define CONF_DEVICE_INITIALIZATION_DONE 0x1
#define CONF_DEVICE_IS_HC 0x2

uint_fast32_t conf = CONF_DEVICE_INITIALIZATION_DONE | CONF_DEVICE_IS_HC;

// The order is that of the words sent on the wire.  cid[0] is bits 127
// to 96 and so on.  The crc bits (cid[3] & 0xfe) are not computed by
// the interface.
// the Card IDentification register
// This is a sample for testing.
uint32_t cid[4] = {0x03534453, 0x44313238, 0x30c6d678, 0xb000146d};

// csr not including state
static uint_fast32_t csr;
// state
static uint_fast8_t sd_state;

#define FLAGS_GOT_CMD8 0x1
#define FLAGS_HOST_CAPACITY_SUPPORT 0x2
#define FLAGS_POWER_SAVING 0x4

static uint_fast32_t flags;

typedef enum cur_resp_t {
  cur_resp_none = 0,
  cur_resp_acmd41,
  cur_resp_cmd2_1,
  cur_resp_cmd2_2,
  cur_resp_cmd2_3,
  cur_resp_cmd2_4,
} cur_resp_t;

static cur_resp_t cur_resp;

#if XPAR_AXI_SD_0_RCA_ENABLED
#define RCA_MISMATCH() sd_status_rca_mismatch(sd_if_status)
#define SET_RCA(new_rca)                                                       \
  AXI_SD_mWriteReg(IF_BASEADDR, AXI_SD_RCA_OFFSET, (new_rca))
#define GET_RCA() AXI_SD_mReadReg(IF_BASEADDR, AXI_SD_RCA_OFFSET)
#else
#define RCA_MISMATCH()                                                         \
  ((AXI_SD_mReadReg(IF_BASEADDR, AXI_SD_CMD_RX_ARG_OFFSET) >> 16) != rca)
#define SET_RCA(new_rca) (rca = (new_rca))
#define GET_RCA() rca
static uint_fast16_t rca;
#endif

#define GET_SD_STATE() sd_state

#define SET_SD_STATE(new_state) (sd_state = (new_state))

#define REQUIRE_RCA_MATCH()                                                    \
  do {                                                                         \
    if (RCA_MISMATCH())                                                        \
      return;                                                                  \
  } while (0)

#define REQUIRE_ACMD()                                                         \
  do {                                                                         \
    if (!(csr_r1 & CSR_APP_CMD))                                               \
      goto got_illegal_command;                                                \
  } while (0)

#define REQUIRE_SD_STATE(wanted)                                               \
  do {                                                                         \
    if (sd_state_saved != (wanted))                                            \
      goto got_illegal_command;                                                \
  } while (0)

static inline uint32_t get_cmd_arg(void) {
  return AXI_SD_mReadReg(IF_BASEADDR, AXI_SD_CMD_RX_ARG_OFFSET);
}

static inline void send_simple_response(uint32_t arg) {
  AXI_SD_mWriteReg(IF_BASEADDR, AXI_SD_CMD_TX_DAT_OFFSET, arg);
}

static inline void handle_command_received(uint32_t sd_if_status) {
  if (sd_status_crc_err(sd_if_status)) {
    csr |= CSR_COM_CRC_ERROR;
    return;
  }

  if (!sd_status_cmd_is_from_host(sd_if_status))
    return;

  // r1 response
  uint32_t csr_r1 = csr;

  /* Although the standard says APP_CMD is cleared on read, the only
     difference it makes is the r1 after ACMD41.  For which the standard
     says:

        As APP_CMD status is defined as "clear by read", APP_CMD status,
        which is set by ACMD41, may be indicated in the response of next
        CMD11 or CMD13.  However, as ACMD11 and ACMD3 are not defined,
        it is not necessary to set APP_CMD status.

     And implementing CSR_APP_CMD as always related to the current
     command makes implementation easier at least to reason with by
     omitting the need for an additional flag marking whether the
     current command is an ACMD.  Thus we are doing it that way.
  */

  // csr to be saved
  uint32_t csr_next =
      csr_r1 & ~(CSR_APP_CMD | CSR_ILLEGAL_COMMAND | CSR_COM_CRC_ERROR);

  // state
  uint_fast8_t sd_state_saved = GET_SD_STATE(), sd_state_next = sd_state_saved;

  switch (sd_status_cmd_index(sd_if_status)) {
  case 0:
    csr_next = 0;
    flags = 0;
    sd_state_next = SD_STATE_IDLE;
    SET_RCA(0);
    break;

  case 2:
    REQUIRE_SD_STATE(SD_STATE_READY);
    // tell the interface the length of the response is 17 octets with
    // NCR being 5 and no crc
    AXI_SD_mWriteReg(IF_BASEADDR, AXI_SD_CMD_TX_CTRL_OFFSET,
                     AXI_SD_CMD_TX_CTRL_DISABLE_CRC |
                         AXI_SD_CMD_TX_CTRL_NO_INDEX |
                         (5 << AXI_SD_CMD_TX_CTRL_POS_NCR) |
                         (17 << AXI_SD_CMD_TX_CTRL_POS_RESP_LEN));
    send_simple_response(0x3f << 24);
    sd_state_next = SD_STATE_IDENT;
    cur_resp = cur_resp_cmd2_1;
    break;

  case 3:
    switch (sd_state_saved) {
    case SD_STATE_IDENT:
    case SD_STATE_STBY:
      break;
    default:
      goto got_illegal_command;
    }

    {
      const uint_fast16_t rca_old = GET_RCA();
      uint_fast16_t rca_new;

      if (rca_old == 0)
        rca_new = RCA_DEFAULT;
      else {
        rca_new = (rca_old + 1) & 0xffff;

        // Although it is supposed to be the responsibility of the host
        // to reserve the RCA=0 for card de-selection, we are skipping
        // it to keep our platform sane in case of misbehaving hosts.
        if (rca_new == 0)
          rca_new = 1;
      }

      send_simple_response(
          ((uint32_t)rca_new << 16) |
          ((uint32_t)(bool)(csr_r1 & CSR_COM_CRC_ERROR) << 15) |
          ((uint32_t)(bool)(csr_r1 & CSR_ILLEGAL_COMMAND) << 14) |
          ((uint32_t)(bool)(csr_r1 & CSR_ERROR) << 13) | (csr_r1 & 0x1ff) |
          (sd_state_saved << 9));

      SET_RCA(rca_new);

      sd_state_next = SD_STATE_STBY;
    }
    break;

  case 7:
    if (RCA_MISMATCH()) {
      switch (sd_state_saved) {
      case SD_STATE_STBY:
      case SD_STATE_TRAN:
      case SD_STATE_DATA:
        sd_state_next = SD_STATE_STBY;
        break;
      case SD_STATE_PRG:
        sd_state_next = SD_STATE_DIS;
        break;
      default:
        goto got_illegal_command;
      }
    } else {
      switch (sd_state_saved) {
      case SD_STATE_STBY:
        sd_state_next = SD_STATE_TRAN;
        break;
      case SD_STATE_DIS:
        sd_state_next = SD_STATE_PRG;
        break;
      default:
        goto got_illegal_command;
      }

      goto send_r1;
    }
    break;

  case 8:
    REQUIRE_SD_STATE(SD_STATE_IDLE);

    // Check that the voltage is supported.
    {
      uint32_t arg = get_cmd_arg();
      if (((arg >> 8) & 0xf) != 1)
        break;
      send_simple_response((arg & 0xff) | 0x100);
      flags |= FLAGS_GOT_CMD8;
    }
    break;

  case 13:
    // acmd13 not implemented

    // command queue not implemented

    REQUIRE_RCA_MATCH();
    switch (sd_state_saved) {
    case SD_STATE_STBY:
    case SD_STATE_TRAN:
    case SD_STATE_DATA:
    case SD_STATE_RCV:
    case SD_STATE_PRG:
    case SD_STATE_DIS:
      break;
    default:
      goto got_illegal_command;
    }

  send_r1:
    send_simple_response(csr_r1 | (sd_state_saved << 9));

    // clear every bit except those with clear condition A or B and
    // APP_CMD which is implemented as B
    csr_next &= CSR_FX_EVENT | CSR_READY_FOR_DATA | CSR_CARD_ECC_DISABLED |
                CSR_CARD_IS_LOCKED | CSR_APP_CMD | CSR_ILLEGAL_COMMAND |
                CSR_COM_CRC_ERROR;
    break;

  case 41:
    REQUIRE_ACMD();
    REQUIRE_SD_STATE(SD_STATE_IDLE);

    // UHS-II is not supported.
    {
      uint32_t arg = get_cmd_arg();
      uint_fast32_t flags_saved = flags, conf_saved = conf;
      bool capacity_support = conf_saved & CONF_DEVICE_IS_HC;
      bool initialization_done = conf_saved & CONF_DEVICE_INITIALIZATION_DONE;

      // respond busy when the host does not support SDHC but the
      // device is SDHC
      if (capacity_support &&
          !((flags_saved & FLAGS_GOT_CMD8) && (arg & 0x40000000))) {
        capacity_support = 0;
        initialization_done = 0;
      }

      // The crc and command index parts are different from R1.  So
      // first the first 2 octets of the response is written.  Then
      // the next 4 octets are written on the next interrupt.
      AXI_SD_mWriteReg(IF_BASEADDR, AXI_SD_CMD_TX_CTRL_OFFSET,
                       AXI_SD_CMD_TX_CTRL_DISABLE_CRC |
                           AXI_SD_CMD_TX_CTRL_NO_INDEX |
                           (5 << AXI_SD_CMD_TX_CTRL_POS_NCR) |
                           (6 << AXI_SD_CMD_TX_CTRL_POS_RESP_LEN));
      send_simple_response((0x3f00 | ((uint32_t)initialization_done << 7) |
                            ((uint32_t)capacity_support << 6))
                           << 16);

      // do not change state if the command is a query
      if ((arg & 0xffffff) && initialization_done)
        sd_state_next = SD_STATE_READY;

      flags = flags_saved;
      cur_resp = cur_resp_acmd41;
    }
    break;

  case 55:
    REQUIRE_RCA_MATCH();
    switch (sd_state_saved) {
    case SD_STATE_IDLE:
    case SD_STATE_STBY:
    case SD_STATE_TRAN:
    case SD_STATE_DATA:
    case SD_STATE_RCV:
    case SD_STATE_PRG:
    case SD_STATE_DIS:
      break;
    default:
      goto got_illegal_command;
    }

    csr_r1 |= CSR_APP_CMD;
    csr_next |= CSR_APP_CMD;
    goto send_r1;
    break;

  default:
  got_illegal_command:
    csr_next |= CSR_ILLEGAL_COMMAND;
    break;
  }

  csr = csr_next;
  SET_SD_STATE(sd_state_next);
}

static inline void handle_write_buf_not_full(uint32_t sd_if_status) {
  cur_resp_t cur_resp_saved = cur_resp;
  switch (cur_resp_saved) {
  case cur_resp_acmd41:
    send_simple_response(0xff8000ff);
    cur_resp = cur_resp_none;
    break;
  case cur_resp_cmd2_1:
  case cur_resp_cmd2_2:
  case cur_resp_cmd2_3:
    send_simple_response(cid[cur_resp_saved - cur_resp_cmd2_1]);
    cur_resp = cur_resp_saved + 1;
    break;
  case cur_resp_cmd2_4:
    send_simple_response(cid[3]);
    cur_resp = cur_resp_none;
    break;

    // This should not happen.
  case cur_resp_none:
    break;
  default:
    cur_resp = cur_resp_none;
    break;
  }
}
