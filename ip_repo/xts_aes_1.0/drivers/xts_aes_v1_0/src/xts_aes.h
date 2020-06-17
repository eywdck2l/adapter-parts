#ifndef XTS_AES_H
#define XTS_AES_H

/****************** Include Files ********************/
#include "xil_io.h"
#include "xil_types.h"
#include "xstatus.h"
#include <stdbool.h>

#define XTS_AES_REG_BLOCK_OFFSET 0
#define XTS_AES_REG_STATUS 16
#define XTS_AES_REG_KEY1 512
#define XTS_AES_REG_KEY2 768
// Writing to an address outside the range for the expanded key but
// still within the 512-byte area discards the current key.  There can
// be at most 15 round keys.
#define XTS_AES_REG_DISCARD_KEY (XTS_AES_REG_KEY1 + 240)

#define XTS_AES_REG_STATUS_GOT_KEY 0
#define XTS_AES_REG_STATUS_EN 1
#define XTS_AES_REG_STATUS_DECRYPT 2

/**************************** Type Definitions *****************************/
/**
 *
 * Write a value to a xts_aes register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the xts_aes device.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 *      void xts_aes_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define xts_aes_mWriteReg(BaseAddress, RegOffset, Data)                        \
  Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a xts_aes register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the xts_aes device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 *      u32 xts_aes_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define xts_aes_mReadReg(BaseAddress, RegOffset)                               \
  Xil_In32((BaseAddress) + (RegOffset))

/************************** Function Prototypes ****************************/

/**
 * Set direction and block offset
 *
 */
static inline void xts_aes_set_mode(UINTPTR baseAddr, bool decrypt,
                                    u32 blk_offset) {
  xts_aes_mWriteReg(baseAddr, XTS_AES_REG_BLOCK_OFFSET, blk_offset);
  xts_aes_mWriteReg(baseAddr, XTS_AES_REG_STATUS,
                    (1 << XTS_AES_REG_STATUS_EN) |
                        (decrypt ? (1 << XTS_AES_REG_STATUS_DECRYPT) : 0));
}

/**
 * Discard key
 *
 */
static inline void xts_aes_discard_key(UINTPTR baseAddr) {
  xts_aes_mWriteReg(baseAddr, XTS_AES_REG_DISCARD_KEY, 0);
}

// Set key. Key schedule is performed by this function.

extern void xts_aes_set_key_256(u32 baseAddress, const u32 key[8]);

extern void xts_aes_set_key_512(u32 baseAddress, const u32 key[16]);

#endif // XTS_AES_H
