#ifndef _CRYPT_H
#define _CRYPT_H

#include <inttypes.h>
#include <stdbool.h>

/**
 * Initialize
 */
extern void crypt_initialize(void);

/**
 * Set key
 *
 * @param key 64-byte XTS-AES-256 key
 */
extern void crypt_set_key(const uint32_t key[16]);

enum { CRYPT_ENCRYPT, CRYPT_DECRYPT };

/**
 * Set tweak and direction
 *
 * @param decrypt Direction, to encrypt or decrypt
 * @param tweak Tweak
 */
extern void crypt_set(bool decrypt, uint64_t tweak);

#endif
