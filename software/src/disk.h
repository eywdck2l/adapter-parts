#ifndef _DISK_H
#define _DISK_H

#include "util.h"
#include <stdbool.h>
#include <stddef.h>

extern my_blkcnt_t disk_get_capacity(void);

#define DISK_TRAN_WRITE 0
#define DISK_TRAN_READ 0x1
#define DISK_TRAN_ENCRYPTED 0x2
#define DISK_TRAN_CALL_ON_BLOCK_DONE 0x4

/**
 * Transfer blocks. The callback is called with the error condition and
 * the number of blocks transferred. When the number of blocks
 * transferred is 4294967296, the argument will be 0. When this function
 * returns successfully, the reader may start reading data from the
 * AXI-Stream master interface, or the writer may start writing data to
 * the AXI-Stream slave interface.
 *
 * The callback is called in the following conditions:
 * - When an error occurs, the callback is called with the error
 *   condition.
 * - If `DISK_TRAN_CALL_ON_BLOCK_DONE` is set, when a block is
 *   successfully transferred. This may happen less times than the block
 *   count when multiple blocks have been transferred since the last
 *   call.
 * - When the block count or card capacity is reached for reads. For
 *   writes, it waits until programming is complete.
 *
 * If an error has occurred, `cb` will not be called after it has been
 * called with the error. If an error has not occurred and `cb` has been
 * called at least once, `transferred` will be higher than that of last
 * time
 *
 * @param offset The index of the first block to read
 * @param count The number of blocks to read. 0 means indefinitely
 * @param port The source or destination of data
 * @param cb Callback
 * @param flags Flags
 * - DISK_TRAN_READ: The transaction is a read
 * - DISK_TRAN_ENCRYPTED: Encrypt the data for writes and decrypt the
     data for reads
 * - DISK_TRAN_CALL_ON_BLOCK_DONE: The callback is called with
 *   DISK_TRANSACTION_BLOCK_DONE when a block is successfully
 *   transferred.
 * @return error code
 */
extern int disk_tran(my_blkcnt_t offset, my_blkcnt_t count, int port,
                     void (*cb)(int error, my_blkcnt_t transferred),
                     int tran_flags);

extern void disk_tran_change_block_count(my_blkcnt_t count);

extern void disk_tran_abort(void);

extern void disk_tran_change_callback(void (*cb)(int error,
                                                 my_blkcnt_t transferred));

extern void disk_write_change_port(int port);

/**
 * Read from disk to memory. If an error is detected right away, return
 * it. Otherwise call cb with error code when done.
 *
 * @param dest Destination in memory, must be aligned to 4-byte boundary
 * @param blk_first First block
 * @param blk_count Number of blocks to be copied
 * @param cb Callback
 * @param tran_flags Flags passed directly to `disk_tran`
 */
extern int read_to_mem(void *dest, my_blkcnt_t blk_first, size_t blk_count,
                       void (*cb)(int), int tran_flags);

/**
 * Write from memory to disk. If an error is detected right away, return
 * it. Otherwise call cb with error code when done.
 *
 * @param data Data in memory, must be aligned to 4-byte boundary
 * @param blk_first First block
 * @param blk_count Number of blocks to be copied
 * @param cb Callback
 * @param tran_flags Flags passed directly to `disk_tran`
 * @param skip_tran Skip setting up transfer
 */
extern int write_from_mem(const void *data, my_blkcnt_t blk_first,
                          size_t blk_count, void (*cb)(int), int tran_flags,
                          bool skip_tran);

/**
 * Callback for when a block is copied.
 */
extern void write_from_mem_continue(int error, my_blkcnt_t transferred);

#endif
