#ifndef _SD_DEFINITIONS_H
#define _SD_DEFINITIONS_H

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
#define CSR_CURRENT_STATE 9
#define CSR_READY_FOR_DATA 8
#define CSR_FX_EVENT 6
#define CSR_APP_CMD 5
#define CSR_AKE_SEQ_ERROR 3

#define CSR_ERROR_BITS                                                         \
  ((1 << CSR_OUT_OF_RANGE) | (1 << CSR_ADDRESS_ERROR) |                        \
   (1 << CSR_BLOCK_LEN_ERROR) | (1 << CSR_ERASE_SEQ_ERROR) |                   \
   (1 << CSR_ERASE_PARAM) | (1 << CSR_WP_VIOLATION) |                          \
   (1 << CSR_LOCK_UNLOCK_FAILED) | (1 << CSR_COM_CRC_ERROR) |                  \
   (1 << CSR_ILLEGAL_COMMAND) | (1 << CSR_CARD_ECC_FAILED) |                   \
   (1 << CSR_CC_ERROR) | (1 << CSR_ERROR) | (1 << CSR_CSD_OVERWRITE) |         \
   (1 << CSR_WP_ERASE_SKIP) | (1 << CSR_ERASE_RESET) |                         \
   (1 << CSR_AKE_SEQ_ERROR))

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
} static inline csr_current_state(uint32_t csr) {
  return (csr >> 9) & 0xf;
}

#endif
