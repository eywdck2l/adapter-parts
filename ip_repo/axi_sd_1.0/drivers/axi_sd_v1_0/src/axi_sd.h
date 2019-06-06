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

#define AXI_SD_CID_OFFSET 0
#define AXI_SD_CSD_OFFSET 0x10
#define AXI_SD_OCR_OFFSET 0x20
#define AXI_SD_CSR_SET_BITS_OFFSET 0x30
#define AXI_SD_CSR_CLR_BITS_OFFSET 0x34
#define AXI_SD_STATUS_OFFSET 0x40
#define AXI_SD_CMD_ARG_OFFSET 0x44
#define AXI_SD_CSR_READ_OFFSET 0x48

#define AXI_SD_STATUS_INACTIVE 0
#define AXI_SD_STATUS_DEVICE_RESET 1
#define AXI_SD_STATUS_GOT_CMD8 2
#define AXI_SD_STATUS_CMD_UNREAD 3
#define AXI_SD_STATUS_CMD_MISSED 4
#define AXI_SD_STATUS_CMD_INDEX 8
#define AXI_SD_STATUS_ACMD 14

#endif // AXI_SD_H
