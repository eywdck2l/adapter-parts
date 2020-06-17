#ifndef AXI_SD_CARD_H
#define AXI_SD_CARD_H

/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"

#define SD_CARD_REG_CID 0x0
#define SD_CARD_REG_CSD 0x10
#define SD_CARD_REG_STATUS 0x20
#define SD_CARD_REG_CSR_READ 0x24
#define SD_CARD_REG_CMD_INDEX 0x28
#define SD_CARD_REG_SAVED_CMD_ARG 0x2C
#define SD_CARD_REG_LAST_CMD_ARG 0x30
#define SD_CARD_REG_ERASE_START 0x34
#define SD_CARD_REG_ERASE_END 0x38
#define SD_CARD_REG_BLOCK_LIMIT 0x3C
#define SD_CARD_REG_PRE_ERASE_COUNT 0x40
#define SD_CARD_REG_DAT_BLOCKS_TRANSFERRED 0x44
#define SD_CARD_REG_OCR 0x48
#define SD_CARD_REG_SIZE 0x4C
#define SD_CARD_REG_INTR_EN 0x50
#define SD_CARD_REG_CONTROL 0x54
#define SD_CARD_REG_CSR_SET_BITS 0x58
#define SD_CARD_REG_CSR_CLR_BITS 0x5C

#define SD_CARD_REG_CMD_INDEX_SAVED 0
#define SD_CARD_REG_CMD_INDEX_LAST 8

#define SD_CARD_REG_STATUS_LAST_CMD_IGNORED 0
#define SD_CARD_REG_STATUS_LAST_CMD_VALID 1
#define SD_CARD_REG_STATUS_SAVED_CMD_UNREAD 2
#define SD_CARD_REG_STATUS_SAVED_CMD_MISSED 3
#define SD_CARD_REG_STATUS_ANY_CMD_UNREAD 4
#define SD_CARD_REG_STATUS_ANY_CMD_MISSED 5
#define SD_CARD_REG_STATUS_GOT_NEW_CMD12 6
#define SD_CARD_REG_STATUS_INACTIVE 7
#define SD_CARD_REG_STATUS_GOT_RESET 8
#define SD_CARD_REG_STATUS_GOT_CMD8 9
#define SD_CARD_REG_STATUS_BLOCK_LIMIT_USED 10
#define SD_CARD_REG_STATUS_PRE_ERASE_COUNT_USED 11
#define SD_CARD_REG_STATUS_GOT_START_WRITE 12
#define SD_CARD_REG_STATUS_GOT_START_READ 13
#define SD_CARD_REG_STATUS_DAT_DONE 14
#define SD_CARD_REG_STATUS_DAT_BLOCK_DONE 15
#define SD_CARD_REG_STATUS_DAT_ERROR_CODE 16

// Width of DAT error code
#define SD_CARD_REG_DAT_ERROR_WIDTH 3
// Block count reached, including the block being successfully
// transmitted for single block commands.
#define SD_CARD_REG_DAT_ERROR_BLOCK_COUNT_REACHED 0
// Bad crc
#define SD_CARD_REG_DAT_ERROR_READ_BAD_CRC 1
// No data is available after the start of a block
#define SD_CARD_REG_DAT_ERROR_WRITE_NO_DATA 2
// tlast is asserted before a block boundary is expected
#define SD_CARD_REG_DAT_ERROR_WRITE_EARLY_BOUNDARY 3
// tlast is not asserted when a block boundary is expected
#define SD_CARD_REG_DAT_ERROR_WRITE_LATE_BOUNDARY 4
// tready is low after the start of a block
#define SD_CARD_REG_DAT_ERROR_READ_DATA_NOT_ACCEPTED 5

// Signals to start reading and writing data.  Read means to read data
// from the SD bus.  Write means to write data to the SD bus.
#define SD_CARD_REG_CONTROL_PROG_DONE 0
#define SD_CARD_REG_CONTROL_START_WRITE 1
#define SD_CARD_REG_CONTROL_START_READ 2

/**************************** Type Definitions *****************************/
/**
 *
 * Write a value to a AXI_SD_CARD register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the AXI_SD_CARDdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 *      void AXI_SD_CARD_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32
 *Data)
 *
 */
#define AXI_SD_CARD_mWriteReg(BaseAddress, RegOffset, Data)                    \
  Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a AXI_SD_CARD register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the AXI_SD_CARD device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 *      u32 AXI_SD_CARD_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define AXI_SD_CARD_mReadReg(BaseAddress, RegOffset)                           \
  Xil_In32((BaseAddress) + (RegOffset))

/************************** Function Prototypes ****************************/

#endif // AXI_SD_CARD_H
