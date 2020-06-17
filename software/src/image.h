#ifndef _IMAGE_H
#define _IMAGE_H

#include "util.h"

extern void read_and_parse_config(void);

extern int image_req(my_blkcnt_t blk_start, my_blkcnt_t blk_count, bool read,
                     void (*cb)(int err, my_blkcnt_t transferred));

extern void image_write_change_block_count(my_blkcnt_t blk_count);

extern void image_abort_transfer(void (*cb)(void));

#endif
