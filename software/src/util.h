#ifndef _UTIL_H
#define _UTIL_H

#include "time.h"
#include "uart.h"
#include <inttypes.h>
#include <stdio.h>
#include <stdnoreturn.h>

// Disk size

typedef uint_fast64_t my_blkcnt_t;
#define PRIBLKCNT PRIuFAST64

// Errors

enum {
  SUCCESS,
  OUT_OF_RANGE,
  NO_SPACE_LEFT,
  SD_HOST_BAD_CARD,
  SD_HOST_CANT_STOP_TRANSFER,
  SD_HOST_CANT_START_TRANSFER,
  SD_HOST_REJECTED_BY_CARD,
  SD_HOST_CARD_ERROR,
  SD_HOST_TRANSFER_STOPPED_EARLY,
  SD_HOST_INITIALIZATION_FAILURE,
  SD_HOST_REINITIALIZATION_CARD_CHANGED,
  SD_HOST_FEATURE_NOT_IMPLEMENTED,
  SD_HOST_TIMEOUT
};

// Logging

enum {
  LOG_LEVEL_NONE,
  LOG_LEVEL_FATAL,
  LOG_LEVEL_ERROR,
  LOG_LEVEL_WARN,
  LOG_LEVEL_INFO,
  LOG_LEVEL_DEBUG
};

#ifndef LOG_LEVEL
#define LOG_LEVEL LOG_LEVEL_DEBUG
#endif

#define log(level, ...)                                                        \
  do {                                                                         \
    if ((level) <= LOG_LEVEL) {                                                \
      printf("%08X %s: %u: ", gettime(), __FILE__, __LINE__);                  \
      printf(__VA_ARGS__);                                                     \
    }                                                                          \
  } while (0)

#define log_fatal(...) log(LOG_LEVEL_FATAL, "FATAL: " __VA_ARGS__)
#define log_error(...) log(LOG_LEVEL_ERROR, "ERROR: "__VA_ARGS__)
#define log_warn(...) log(LOG_LEVEL_WARN, "WARN: " __VA_ARGS__)
#define log_info(...) log(LOG_LEVEL_INFO, "INFO: " __VA_ARGS__)
#define log_debug(...) log(LOG_LEVEL_DEBUG, "DEBUG: " __VA_ARGS__)

extern void flush_log(void);

extern noreturn void abort(void);

#endif
