#include "crypt.h"
#include "util.h"
#include "xparameters.h"
#include "xts_aes.h"

#define BASEADDR XPAR_ENCRYPT_WRAPPER_ENCRYPT_S_AXI_BASEADDR

#define WRITE_REG(offset, value) xts_aes_mWriteReg(BASEADDR, offset, value)

#define READ_REG(offset) xts_aes_mReadReg(BASEADDR, offset)

void crypt_initialize(void) {
  WRITE_REG(XTS_AES_REG_STATUS, 0);
  xts_aes_discard_key(BASEADDR);
  int status = READ_REG(XTS_AES_REG_STATUS);
  if (status != 0) {
    log_error("Got status %d\n", status);
    abort();
  }
}

void crypt_set_key(const uint32_t key[16]) {
  xts_aes_set_key_512(BASEADDR, key);
  int status = READ_REG(XTS_AES_REG_STATUS);
  if (status != (1 << XTS_AES_REG_STATUS_GOT_KEY)) {
    log_error("Got status %d\n", status);
    abort();
  }
}

void crypt_set(bool decrypt, uint64_t blk_offset) {
  xts_aes_set_mode(BASEADDR, decrypt, blk_offset);
}
