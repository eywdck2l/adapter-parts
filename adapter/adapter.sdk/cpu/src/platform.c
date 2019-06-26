#include "platform.h"
#include "sd-device.h"
#include "xintc.h"
#include "xintc_l.h"
#include "xparameters.h"
#include "xuartlite_l.h"
#include <stdio.h>

// output buffer, where output_buffer_start == output_buffer_end means
// the buffer is empty
static volatile size_t output_buffer_start, output_buffer_end;
static volatile bool output_buffer_overflow;
static volatile char output_buffer[OUTPUT_BUFFER_SIZE];

// reset everything related to printing
static void print_reset(void) {
  output_buffer_start = 0;
  output_buffer_end = 0;
  output_buffer_overflow = 0;
}

static void send_byte_unbuffered(char ch) {
  XUartLite_SendByte(STDOUT_BASEADDRESS, ch);
}

// return the next char from the output buffer or EOF
static int char_from_output_buf(void) {
  // position in the message for output buffer overflow if it has been
  // started
  static const char *overflow_msg_at = NULL;
  size_t buf_start, buf_end;

  if (overflow_msg_at) {
    if (*overflow_msg_at)
      return *overflow_msg_at++;
    else {
      // at the end of the message, proceed as usual
      overflow_msg_at = NULL;
      goto no_overflow_msg;
    }
  }

  else {
  no_overflow_msg:
    buf_start = output_buffer_start;
    buf_end = output_buffer_end;

    if (buf_start == buf_end)
      // the buffer is empty
      return EOF;

    else {
      const int ret = output_buffer[buf_start];
      buf_start = (buf_start + 1) % OUTPUT_BUFFER_SIZE;
      if (buf_start == buf_end && output_buffer_overflow) {
        // if the buffer has overflowed, print a message saying it
        overflow_msg_at = OUTPUT_BUFFER_OVERFLOW_MESSAGE;
        output_buffer_overflow = 0;
      }
      output_buffer_start = buf_start;
      return ret;
    }
  }
}

bool flush_printed_try(void) {
  bool more_bytes_left = 0;
  bool notdone = 1;

  while (notdone) {
    if (XUartLite_IsTransmitFull(STDOUT_BASEADDRESS)) {
      notdone = 0;
      more_bytes_left = 1;
    } else {
      const int next_char = char_from_output_buf();
      if (next_char == EOF)
        notdone = 0;
      else
        send_byte_unbuffered(next_char);
    }
  }

  return more_bytes_left;
}

// print a byte, not to be used in interrupt routines
static void putc_binmode(char ch) {
  size_t ch_pos;

  ATOMIC_BLOCK {
    // do not write anything when the buffer has overflowed
    if (!output_buffer_overflow) {
      const size_t start = output_buffer_start;
      ch_pos = output_buffer_end;
      const size_t ch_pos_next = (ch_pos + 1) % OUTPUT_BUFFER_SIZE;
      if (ch_pos_next == start) {
        output_buffer_overflow = 1;
      } else {
        output_buffer[ch_pos] = ch;
        output_buffer_end = ch_pos_next;
      }
    }
  }

  ATOMIC_BLOCK { flush_printed_try(); }
}

// print a byte with LF turned into CRLF, not to be used in interrupt
// routines
void outbyte(char ch) {
  if (ch == '\n')
    putc_binmode('\r');
  putc_binmode(ch);
}

// enable interrupts corresponding to the bits set in the mask without
// affecting others, added because XIntc_EnableIntr will clear the bits
// that are not set in the mask
static void enable_interrupts_noclear(uint32_t mask) {
#if XPAR_XINTC_HAS_SIE
  XIntc_Out32(XPAR_MICROBLAZE_0_AXI_INTC_BASEADDR + XIN_SIE_OFFSET, mask);
#else
  XIntc_EnableIntr(
      XPAR_MICROBLAZE_0_AXI_INTC_BASEADDR,
      XIntc_In32(XPAR_MICROBLAZE_0_AXI_INTC_BASEADDR + XIN_IER_OFFSET) | mask);
#endif
}

static void uart_intr_handler(void) __attribute__((fast_interrupt));

// initialize the interrupt controller
static void intc_init(void) {
  // this variable is not used besides to pass to XIntc_Initialize which
  // needs an XIntc instance
  XIntc InterruptController;
  // only used to set up XIntc_BitPosMask for XIntc_RegisterFastHandler
  XIntc_Initialize(&InterruptController, XPAR_MICROBLAZE_0_AXI_INTC_DEVICE_ID);

  // register the handler and enable interrupt for uart
  XIntc_RegisterFastHandler(
      XPAR_MICROBLAZE_0_AXI_INTC_BASEADDR,
      XPAR_MICROBLAZE_0_AXI_INTC_AXI_UARTLITE_0_INTERRUPT_INTR,
      uart_intr_handler);
  enable_interrupts_noclear(XPAR_AXI_UARTLITE_0_INTERRUPT_MASK);

  // register the handler and enable interrupt for the sd device
  // interface
  XIntc_RegisterFastHandler(XPAR_MICROBLAZE_0_AXI_INTC_BASEADDR,
                            XPAR_MICROBLAZE_0_AXI_INTC_AXI_SD_0_INTERRUPT_INTR,
                            sd_device_intr_handler);
  enable_interrupts_noclear(XPAR_AXI_SD_0_INTERRUPT_MASK);

  // enable hardware interrupts in the interrupt controller
  XIntc_MasterEnable(XPAR_MICROBLAZE_0_AXI_INTC_BASEADDR);
}

void platform_init(void) {
  print_reset();

  sd_device_init();

  intc_init();

  // enable interrupt in uart
  XUartLite_EnableIntr(STDOUT_BASEADDRESS);

  setvbuf(stdout, NULL, _IONBF, 0);

  // enable interrupts globally
  microblaze_enable_interrupts();
}

void flush_printed(void) {
  bool more_bytes_left = 1;
  while (more_bytes_left) {
    ATOMIC_BLOCK { more_bytes_left = flush_printed_try(); }
  }
}

static void uart_intr_handler(void) { flush_printed_try(); }

// inbyte is not used in this project so I saved the effort of making it
// non-blocking
char inbyte(void) { return XUartLite_RecvByte(STDIN_BASEADDRESS); }
