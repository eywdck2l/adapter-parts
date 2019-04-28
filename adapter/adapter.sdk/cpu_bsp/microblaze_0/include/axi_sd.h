#ifndef AXI_SD_H
#define AXI_SD_H

/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"
#include <inttypes.h>
#include <stdbool.h>

/**************************** Type Definitions *****************************/
/**
 *
 * Write a value to a AXI_SD register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the AXI_SDdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 *	void AXI_SD_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define AXI_SD_mWriteReg(BaseAddress, RegOffset, Data)                         \
  Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a AXI_SD register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the AXI_SD device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 *	u32 AXI_SD_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define AXI_SD_mReadReg(BaseAddress, RegOffset)                                \
  Xil_In32((BaseAddress) + (RegOffset))

#define AXI_SD_CTRL_OFFSET 0
#define AXI_SD_STATUS_OFFSET 4
#define AXI_SD_CMD_RX_ARG_OFFSET 8
#define AXI_SD_CMD_TX_CTRL_OFFSET 12
#define AXI_SD_CMD_TX_DAT_OFFSET 16
#define AXI_SD_RCA_OFFSET 20

#define AXI_SD_STATE_IDLE 0
#define AXI_SD_STATE_CMD_RECEIVED 1
#define AXI_SD_STATE_WRITING_BUF_NOT_FULL 2
#define AXI_SD_STATE_WRITING_BUF_FULL 3

#define AXI_SD_CMD_TX_CTRL_DISABLE_CRC 0x1
#define AXI_SD_CMD_TX_CTRL_NO_INDEX 0x2
#define AXI_SD_CMD_TX_CTRL_POS_NCR 2
#define AXI_SD_CMD_TX_CTRL_POS_RESP_LEN 8

static inline uint_fast8_t sd_status_cmd_index(u32 status_reg) {
  return status_reg & 0x3f;
}

static inline bool sd_status_cmd_is_from_host(u32 status_reg) {
  return status_reg & 0x40;
}

static inline uint_fast8_t sd_status_crc_part(u32 status_reg) {
  return (status_reg >> 9) & 0x7f;
}

static inline uint_fast8_t sd_status_state(u32 status_reg) {
  return (status_reg >> 16) & 0x3;
}

static inline bool sd_status_crc_err(u32 status_reg) {
  return status_reg & 0x80000;
}

static inline bool sd_status_rca_mismatch(u32 status_reg) {
  return status_reg & 0x100000;
}

static inline bool sd_status_dat3_pullup_disabled(u32 status_reg) {
  return status_reg & 0x1000000;
}

#endif // AXI_SD_H
