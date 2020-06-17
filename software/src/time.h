#ifndef _TIME_H
#define _TIME_H

#include "xparameters.h"
#include "xtmrctr_l.h"
#include <limits.h>
#include <stdbool.h>

#define FROM_US(x) (my_time_t)(0.000001 * XPAR_TIMER_CLOCK_FREQ_HZ * (x))
#define FROM_MS(x) (my_time_t)(0.001 * XPAR_TIMER_CLOCK_FREQ_HZ * (x))
#define FROM_S(x) (my_time_t)(1.0 * XPAR_TIMER_CLOCK_FREQ_HZ * (x))

// Timer 0 counts forever and is used for getting the time. Timer 1 is
// used for scheduling tasks.

#define TIMER_BASEADDR XPAR_TIMER_BASEADDR

typedef int my_time_t;
#define TIME_MAX INT_MAX
#define TIME_MIN INT_MIN

// Tasks are put in slots. Each client gets a separate slot. Jobs in
// earlier slots are called before those in later slots.

typedef enum { TIMER_SLOT_SD_HOST, TIMER_SLOT_COUNT } timer_slot_t;

static inline my_time_t gettime(void) {
  return XTmrCtr_GetTimerCounterReg(TIMER_BASEADDR, 0);
}

static inline bool is_before(my_time_t x, my_time_t y) {
  // Time wraps. Simply using x < y does not work. This method works for
  // intervals up to half the period at which time wraps.
  return x - y < 0;
}

static inline bool is_it_already(my_time_t target) {
  return !is_before(gettime(), target);
}

extern void timer_interrupt_handler(void) __attribute__((fast_interrupt));

extern void set_timer_slot(timer_slot_t slot, my_time_t time, void (*cb)(void));

extern void clear_timer_slot(timer_slot_t slot);

extern bool call_schedule_jobs;

extern void schedule_jobs(void);

extern void time_init(void);

#endif
