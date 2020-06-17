#include "time.h"
#include "util.h"
#include "xparameters.h"
#include "xtmrctr_l.h"
#include <stdbool.h>
#include <stddef.h>
#include <string.h>

bool call_schedule_jobs;

struct job_t {
  my_time_t at;
  void (*work)(void);
};

static struct job_t jobs[TIMER_SLOT_COUNT];

void timer_interrupt_handler(void) { schedule_jobs(); }

void time_init(void) {
  memset(jobs, 0, sizeof(jobs));
  call_schedule_jobs = 0;

  XTmrCtr_SetLoadReg(TIMER_BASEADDR, 0, 0);
  // Enable auto reload and start timer 0
  XTmrCtr_WriteReg(TIMER_BASEADDR, 0, XTC_TCSR_OFFSET,
                   XTC_CSR_ENABLE_TMR_MASK | XTC_CSR_AUTO_RELOAD_MASK);
}

void schedule_jobs(void) {
  call_schedule_jobs = 0;

  my_time_t now;

  // Call tasks

call_tasks:
  now = gettime();
  for (unsigned i = 0; i < TIMER_SLOT_COUNT; i++) {
    void (*work)(void) = jobs[i].work;
    if (work && !is_before(now, jobs[i].at)) {
      log_debug("calling scheduled job %u %p\n", i, (void *)work);
      jobs[i].work = NULL;
      work();
      // The task just finished may have scheduled new tasks. Thus we
      // start over.
      goto call_tasks;
    }
  }

  // Set interrupt for next task

  my_time_t until_next = TIME_MAX;
  for (unsigned i = 0; i < TIMER_SLOT_COUNT; i++) {
    if (jobs[i].work) {
      // `until_i` is positive because all other tasks have been called.
      my_time_t until_i = jobs[i].at - now;
      if (until_i < until_next)
        until_next = until_i;
    }
  }

  if (until_next != TIME_MAX) {
    XTmrCtr_SetLoadReg(TIMER_BASEADDR, 1, until_next);
    XTmrCtr_WriteReg(TIMER_BASEADDR, 1, XTC_TCSR_OFFSET, XTC_CSR_LOAD_MASK);
    XTmrCtr_WriteReg(TIMER_BASEADDR, 1, XTC_TCSR_OFFSET,
                     XTC_CSR_ENABLE_TMR_MASK | XTC_CSR_ENABLE_INT_MASK |
                         XTC_CSR_DOWN_COUNT_MASK);
  }
}

void set_timer_slot(timer_slot_t slot, my_time_t time, void (*cb)(void)) {
  jobs[slot] = (struct job_t){.at = time, .work = cb};
  call_schedule_jobs = 1;
}

void clear_timer_slot(timer_slot_t slot) { jobs[slot].work = NULL; }
