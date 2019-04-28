#ifndef _EVENTS_H
#define _EVENTS_H

#include <inttypes.h>
#include <stdbool.h>
#include <stddef.h>

typedef enum event_type_t {
  event_none = 0,
  event_sd_device_got_cmd,
} event_type_t;

typedef struct sd_device_event_t {
  uint32_t status_reg;
  uint32_t rx_arg_reg;
  uint32_t tx_ctrl_reg;
} sd_device_event_t;

typedef struct event_t {
  event_type_t type;
  union {
    sd_device_event_t sd_device;
  } payload;
} event_t;

#ifndef EVENT_BUFFER_SIZE
// the maximum number of events that can be held in the buffer
#define EVENT_BUFFER_SIZE 64
#endif

extern volatile event_t event_buf[EVENT_BUFFER_SIZE];
extern volatile size_t event_buf_start, event_buf_used;

// Append an event to the buffer.  Return whether an error has occurred.
// This function is probably used in an interrupt handler to record an
// event, so it assumes it does not have ATOMIC_BLOCK.
static inline bool event_new(event_t ev) {
  size_t buf_used = event_buf_used;
  if (buf_used < EVENT_BUFFER_SIZE) {
    event_buf_used = buf_used + 1;
    event_buf[(event_buf_start + buf_used) % EVENT_BUFFER_SIZE] = ev;
    return 0;
  } else {
    return 1;
  }
}

// Get the next event.  Return whether there are no more events.
bool get_next_event(event_t *dest);

#endif
