#include "disk.h"
#include "sd-host.h"
#include "xparameters.h"
#include <fsl.h>
#include <stddef.h>

#define CPU_PORT 1

static void (*client_callback)(int);
static size_t block_count_total, block_count_copied;
static union {
  const void *write;
  void *read;
} public_dest;

static void read_continue(int error, my_blkcnt_t transferred);

static void call_cb(int err) {
  // Ensure the callback is called only once.  Because
  // `DISK_TRAN_CALL_ON_BLOCK_DONE` is given to lower layers, they may
  // notify us once when all blocks are copied, and once more for the
  // entire transfer is complete.  Although they should really be a
  // single event.
  void (*cb)(int) = client_callback;
  if (cb) {
    client_callback = NULL;
    log_debug("Calling callback %p %d\n", cb, err);
    cb(err);
  }
}

int read_to_mem(void *dest, my_blkcnt_t blk_first, size_t blk_count,
                void (*cb)(int), int tran_flags) {
  client_callback = cb;
  block_count_total = blk_count;
  block_count_copied = 0;
  public_dest.read = dest;

  // Request data transfer
  int error =
      disk_tran(blk_first, blk_count, SD_HOST_TO_CPU, read_continue,
                DISK_TRAN_READ | DISK_TRAN_CALL_ON_BLOCK_DONE | tran_flags);
  if (error != 0)
    return error;

  return 0;
}

static void read_continue(int error, my_blkcnt_t transferred) {
  if (error) {
    log_error("Got error in transfer %d\n", error);
    call_cb(error);
    return;
  }

  if (transferred > block_count_total)
    transferred = block_count_total;

  if (transferred <= block_count_copied)
    return;

  log_debug("Copy blocks %p %zu to %" PRIBLKCNT "\n", public_dest.read,
            block_count_copied, transferred);

  for (int *start = public_dest.read + 512 * block_count_copied,
           *end = public_dest.read + 512 * transferred;
       start < end; start++)
    getfslx(*start, CPU_PORT, );

  block_count_copied = transferred;

  if (block_count_copied >= block_count_total)
    call_cb(SUCCESS);
}

int write_from_mem(const void *data, my_blkcnt_t blk_first, size_t blk_count,
                   void (*cb)(int), int tran_flags, bool skip_tran) {
  if (blk_count == 0)
    return 0;

  client_callback = cb;
  block_count_total = blk_count;
  block_count_copied = 0;
  public_dest.write = data;

  if (!skip_tran) {
    int error = disk_tran(
        blk_first, blk_count, SD_HOST_FROM_CPU, write_from_mem_continue,
        DISK_TRAN_WRITE | DISK_TRAN_CALL_ON_BLOCK_DONE | tran_flags);
    if (error != 0)
      return error;
  }

  return 0;
}

void write_from_mem_continue(int error, my_blkcnt_t transferred) {
  if (error) {
    log_error("Got error in transfer %d\n", error);
    call_cb(error);
    return;
  }

  if (transferred >= block_count_total) {
    call_cb(SUCCESS);
    return;
  }

  // Feed 1 more block than currently taken. More may block.

  if (transferred < block_count_copied)
    return;

  log_debug("Copy block %p %zu\n", public_dest.write, block_count_copied);

  const int *data = public_dest.write + 512 * block_count_copied;
  for (unsigned i = 0; i < 128; i++)
    putfslx(*data++, CPU_PORT, );

  block_count_copied++;
}
