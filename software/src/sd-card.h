#ifndef _SD_CARD_H
#define _SD_CARD_H

#include "util.h"

extern void sd_card_interrupt_handler(void) __attribute__((fast_interrupt));

extern void sd_card_initialize(void);

extern void sd_card_set_tran_notifier(my_blkcnt_t blk_count, void (*cb)(void));

extern void sd_card_set_info(my_blkcnt_t capacity_blk, const char cid[15]);

extern my_blkcnt_t sd_card_get_capacity_limit(void);

#endif
