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

#define AXI_SD_CID 0
#define AXI_SD_CSD 0x10
#define AXI_SD_OCR 0x20
#define AXI_SD_DEV_SIZE 0x24
#define AXI_SD_INTR_EN 0x28
#define AXI_SD_DATA_WRITE 0x2C
#define AXI_SD_CSR_SET_BITS 0x30
#define AXI_SD_CSR_CLR_BITS 0x34
#define AXI_SD_CONTROL 0x38
#define AXI_SD_CONTROL_START_TRAN 0
#define AXI_SD_CONTROL_NO_MORE_DATA 1
#define AXI_SD_STATUS 0x40
#define AXI_SD_STATUS_SAVED_CMD_INDEX 0
#define AXI_SD_STATUS_SAVED_CMD_IS_ACMD 6
#define AXI_SD_STATUS_LAST_CMD_INDEX 8
#define AXI_SD_STATUS_LAST_CMD_IS_ACMD 14
#define AXI_SD_STATUS_LAST_CMD_IGNORED 16
#define AXI_SD_STATUS_LAST_CMD_VALID 17
#define AXI_SD_STATUS_SAVED_CMD_UNREAD 18
#define AXI_SD_STATUS_SAVED_CMD_MISSED 19
#define AXI_SD_STATUS_ANY_CMD_UNREAD 20
#define AXI_SD_STATUS_ANY_CMD_MISSED 21
#define AXI_SD_STATUS_INACTIVE 22
#define AXI_SD_STATUS_GOT_RESET 23
#define AXI_SD_STATUS_GOT_CMD8 24
#define AXI_SD_STATUS_BLOCK_LIMIT_USED 25
#define AXI_SD_STATUS_PRE_ERASE_COUNT_USED 26
#define AXI_SD_STATUS_MAY_WRITE_DATA 27
#define AXI_SD_STATUS_MAY_READ_DATA 28
#define AXI_SD_CSR_READ 0x44
#define AXI_SD_SAVED_CMD_ARG 0x48
#define AXI_SD_LAST_CMD_ARG 0x4c
#define AXI_SD_ERASE_START 0x50
#define AXI_SD_ERASE_END 0x54
#define AXI_SD_BLOCK_LIMIT 0x58
#define AXI_SD_PRE_ERASE_COUNT 0x5c
#define AXI_SD_DAT_BLOCKS_READ 0x60
#define AXI_SD_DATA_READ 0x64

#endif // AXI_SD_H
