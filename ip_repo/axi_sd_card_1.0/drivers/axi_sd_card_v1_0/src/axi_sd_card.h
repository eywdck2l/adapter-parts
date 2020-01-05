#ifndef AXI_SD_CARD_H
#define AXI_SD_CARD_H

/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"

#define AXI_SD_CARD_CID 0
#define AXI_SD_CARD_CSD 0x10
#define AXI_SD_CARD_STATUS 0x20
#define AXI_SD_CARD_CSR_READ 0x24
#define AXI_SD_CARD_SAVED_CMD_ARG 0x28
#define AXI_SD_CARD_LAST_CMD_ARG 0x2c
#define AXI_SD_CARD_ERASE_START 0x30
#define AXI_SD_CARD_ERASE_END 0x34
#define AXI_SD_CARD_BLOCK_LIMIT 0x38
#define AXI_SD_CARD_PRE_ERASE_COUNT 0x3c
#define AXI_SD_CARD_DAT_BLOCKS_TRANSFERRED 0x40
#define AXI_SD_CARD_OCR 0x44
#define AXI_SD_CARD_SIZE 0x48
#define AXI_SD_CARD_INTR_EN 0x4c
#define AXI_SD_CARD_CONTROL 0x50
#define AXI_SD_CARD_CSR_SET_BITS 0x54
#define AXI_SD_CARD_CSR_CLR_BITS 0x58

#define AXI_SD_CARD_STATUS_SAVED_CMD_INDEX 0
#define AXI_SD_CARD_STATUS_SAVED_CMD_IS_ACMD 6
#define AXI_SD_CARD_STATUS_LAST_CMD_INDEX 7
#define AXI_SD_CARD_STATUS_LAST_CMD_IS_ACMD 13
#define AXI_SD_CARD_STATUS_LAST_CMD_IGNORED 14
#define AXI_SD_CARD_STATUS_LAST_CMD_VALID 15
#define AXI_SD_CARD_STATUS_SAVED_CMD_UNREAD 16
#define AXI_SD_CARD_STATUS_SAVED_CMD_MISSED 17
#define AXI_SD_CARD_STATUS_ANY_CMD_UNREAD 18
#define AXI_SD_CARD_STATUS_ANY_CMD_MISSED 19
#define AXI_SD_CARD_STATUS_INACTIVE 20
#define AXI_SD_CARD_STATUS_GOT_RESET 21
#define AXI_SD_CARD_STATUS_GOT_CMD8 22
#define AXI_SD_CARD_STATUS_BLOCK_LIMIT_USED 23
#define AXI_SD_CARD_STATUS_PRE_ERASE_COUNT_USED 24
#define AXI_SD_CARD_STATUS_DAT_DONE 25
#define AXI_SD_CARD_STATUS_DAT_ERROR_CODE 26

// Width of DAT error code
#define AXI_SD_CARD_DAT_ERROR_WIDTH 3
// Block count reached, including the block being successfully
// transmitted for single block commands.
#define AXI_SD_CARD_DAT_ERROR_BLOCK_COUNT_REACHED 0
// Bad crc
#define AXI_SD_CARD_DAT_ERROR_READ_BAD_CRC 1
// No data is available after the start of a block
#define AXI_SD_CARD_DAT_ERROR_WRITE_NO_DATA 2
// tlast is asserted before a block boundary is expected
#define AXI_SD_CARD_DAT_ERROR_WRITE_EARLY_BOUNDARY 3
// tlast is not asserted when a block boundary is expected
#define AXI_SD_CARD_DAT_ERROR_WRITE_LATE_BOUNDARY 4
// tready is low after the start of a block
#define AXI_SD_CARD_DAT_ERROR_READ_DATA_NOT_ACCEPTED 5

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
