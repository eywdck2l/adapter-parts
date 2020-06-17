#ifndef AXI_SD_HOST_H
#define AXI_SD_HOST_H

/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"

// 4 words of response
#define SD_HOST_REG_RESP 0

// Status
// Reading the status clears interrupt bits.
#define SD_HOST_REG_STATUS 16
// Interrupt bits
#define SD_HOST_REG_STATUS_CMD_DONE 0
#define SD_HOST_REG_STATUS_DAT_DONE_NEW 1
#define SD_HOST_REG_STATUS_DAT_BLOCK_DONE 2
#define SD_HOST_REG_STATUS_DAT_BUSY_CLEARED_NEW 3
// Other
#define SD_HOST_REG_STATUS_CMD_ERR_INDEX 4
#define SD_HOST_REG_STATUS_CMD_ERR_CRC 5
#define SD_HOST_REG_STATUS_CMD_ERR_END_BIT 6
#define SD_HOST_REG_STATUS_CMD_ERR_TIMEOUT 7
#define SD_HOST_REG_STATUS_CMD_ISBUSY 8
#define SD_HOST_REG_STATUS_DAT_ENABLED 9
#define SD_HOST_REG_STATUS_DAT_DONE 10
#define SD_HOST_REG_STATUS_DAT_BUSY_CLEARED 11
#define SD_HOST_REG_STATUS_DAT_BLOCK_COUNT_SUCCESS_OVERFLOW 12
#define SD_HOST_REG_STATUS_DAT_STOP_CLOCK 13
#define SD_HOST_REG_STATUS_DAT_ERROR_CODE 14
#define SD_HOST_REG_STATUS_CMD_ERR_ANY                                         \
  ((1 << SD_HOST_REG_STATUS_CMD_ERR_INDEX) |                                   \
   (1 << SD_HOST_REG_STATUS_CMD_ERR_CRC) |                                     \
   (1 << SD_HOST_REG_STATUS_CMD_ERR_END_BIT) |                                 \
   (1 << SD_HOST_REG_STATUS_CMD_ERR_TIMEOUT))

// Number of blocks successfully transferred
#define SD_HOST_REG_DAT_BLOCK_COUNT_SUCCESS 20

// DAT error codes
#define SD_HOST_DAT_ERROR_WIDTH 4
#define SD_HOST_DAT_ERROR_SUCCESS 0
#define SD_HOST_DAT_ERROR_WRITE_NO_DATA 1
#define SD_HOST_DAT_ERROR_WRITE_EARLY_BOUNDARY 2
#define SD_HOST_DAT_ERROR_WRITE_LATE_BOUNDARY 3
#define SD_HOST_DAT_ERROR_WRITE_RESP_TIMEOUT 4
#define SD_HOST_DAT_ERROR_WRITE_BAD_RESP 5
#define SD_HOST_DAT_ERROR_READ_DATA_NOT_ACCEPTED 7
#define SD_HOST_DAT_ERROR_READ_BAD_CRC 8

// Settings
#define SD_HOST_REG_SETTINGS 32
// Clock selection takes 2 bits
#define SD_HOST_REG_SETTINGS_CLK 0
#define SD_HOST_REG_SETTINGS_CLK_STOP 0
#define SD_HOST_REG_SETTINGS_CLK_400K 1
#define SD_HOST_REG_SETTINGS_CLK_25M 2

// Interrupt enable
#define SD_HOST_REG_INTR_EN 36

// DAT control
#define SD_HOST_REG_DAT_CTRL 40
#define SD_HOST_REG_DAT_CTRL_ENABLED 0
#define SD_HOST_REG_DAT_CTRL_KEEP_DATA 1
#define SD_HOST_REG_DAT_CTRL_READ_MODE 2
#define SD_HOST_REG_DAT_CTRL_SMALL_BLOCK 3
#define SD_HOST_REG_DAT_CTRL_BLOCK_COUNT_USED 4
#define SD_HOST_REG_DAT_CTRL_BLOCK_SIZE_EXP 5 // 3 bits
#define SD_HOST_REG_DAT_BLOCK_COUNT_IN 44

// Command
// cmd_arg is the argument of the command.  cmd_rest is the index and
// flags.  Writing to cmd_rest starts sending the command.
#define SD_HOST_REG_CMD_ARG 48
#define SD_HOST_REG_CMD_REST 52
#define SD_HOST_REG_CMD_REST_INDEX 0
#define SD_HOST_REG_CMD_REST_EXP_R2 8

/**************************** Type Definitions *****************************/
/**
 *
 * Write a value to a AXI_SD_HOST register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the AXI_SD_HOSTdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 *      void AXI_SD_HOST_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32
 * Data)
 *
 */
#define AXI_SD_HOST_mWriteReg(BaseAddress, RegOffset, Data)                    \
  Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a AXI_SD_HOST register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the AXI_SD_HOST device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 *      u32 AXI_SD_HOST_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define AXI_SD_HOST_mReadReg(BaseAddress, RegOffset)                           \
  Xil_In32((BaseAddress) + (RegOffset))

#endif // AXI_SD_HOST_H
