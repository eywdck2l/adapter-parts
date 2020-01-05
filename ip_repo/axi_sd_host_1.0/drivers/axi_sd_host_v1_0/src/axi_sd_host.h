#ifndef AXI_SD_HOST_H
#define AXI_SD_HOST_H

/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"

#define AXI_SD_HOST_RESP 0

#define AXI_SD_HOST_STATUS 16
#define AXI_SD_HOST_STATUS_CMD_DONE 0
#define AXI_SD_HOST_STATUS_DAT_DONE_NEW 1
#define AXI_SD_HOST_STATUS_CMD_ERR_INDEX 2
#define AXI_SD_HOST_STATUS_CMD_ERR_CRC 3
#define AXI_SD_HOST_STATUS_CMD_ERR_END_BIT 4
#define AXI_SD_HOST_STATUS_CMD_ERR_TIMEOUT 5
#define AXI_SD_HOST_STATUS_CMD_ISBUSY 6
#define AXI_SD_HOST_STATUS_DAT_DONE 7
#define AXI_SD_HOST_STATUS_DAT_STOP_CLOCK 8
#define AXI_SD_HOST_STATUS_DAT_ERROR_CODE 9
#define AXI_SD_HOST_DAT_ERROR_CODE_WIDTH 4
// Success
#define AXI_SD_HOST_DAT_ERROR_SUCCESS 0
// No data is available after the start of a block
#define AXI_SD_HOST_DAT_ERROR_WRITE_NO_DATA 1
// tlast is asserted before a block boundary is expected
#define AXI_SD_HOST_DAT_ERROR_WRITE_EARLY_BOUNDARY 2
// tlast is not asserted when a block boundary is expected
#define AXI_SD_HOST_DAT_ERROR_WRITE_LATE_BOUNDARY 3
// The card has not sent a response after a block
#define AXI_SD_HOST_DAT_ERROR_WRITE_RESP_TIMEOUT 4
// The response is not 010
#define AXI_SD_HOST_DAT_ERROR_WRITE_BAD_RESP 5
// tready is low after the start of a block
#define AXI_SD_HOST_DAT_ERROR_READ_DATA_NOT_ACCEPTED 7
// Bad crc
#define AXI_SD_HOST_DAT_ERROR_READ_BAD_CRC 8

#define AXI_SD_HOST_SETTINGS 32
#define AXI_SD_HOST_SETTINGS_CLK 2

#define AXI_SD_HOST_DAT_CTRL 36
#define AXI_SD_HOST_DAT_CTRL_ENABLED 0
#define AXI_SD_HOST_DAT_CTRL_READ_MODE 1
#define AXI_SD_HOST_DAT_CTRL_SMALL_BLOCK 2
#define AXI_SD_HOST_DAT_CTRL_BLOCK_COUNT_USED 3
#define AXI_SD_HOST_DAT_CTRL_BLOCK_SIZE_EXP 4

#define AXI_SD_HOST_DAT_BLOCK_COUNT 40

#define AXI_SD_HOST_CMD_ARG 44

#define AXI_SD_HOST_CMD_REST 48
#define AXI_SD_HOST_CMD_REST_INDEX 0
#define AXI_SD_HOST_CMD_REST_EXP_R2 8

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
 * 	void AXI_SD_HOST_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32
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
 * 	u32 AXI_SD_HOST_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define AXI_SD_HOST_mReadReg(BaseAddress, RegOffset)                           \
  Xil_In32((BaseAddress) + (RegOffset))

/************************** Function Prototypes ****************************/
/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the AXI_SD_HOST instance to be
 * worked on.
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same
 * bus.
 *
 */
XStatus AXI_SD_HOST_Reg_SelfTest(void *baseaddr_p);

#endif // AXI_SD_HOST_H
