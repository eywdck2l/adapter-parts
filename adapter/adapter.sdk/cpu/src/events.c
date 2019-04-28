#include "events.h"
#include "platform.h"

volatile event_t event_buf[EVENT_BUFFER_SIZE];
volatile size_t event_buf_start = 0, event_buf_used = 0;

bool get_next_event(event_t *dest) {
  bool no_more = 0;

  ATOMIC_BLOCK {
    size_t buf_used = event_buf_used, buf_start = event_buf_start;
    if (buf_used == 0)
      no_more = 1;
    else {
      event_buf_used = buf_used - 1;
      event_buf_start = (buf_start + 1) % EVENT_BUFFER_SIZE;
      *dest = event_buf[buf_start];
    }
  }

  return no_more;
}
