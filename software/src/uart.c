#include "uart.h"
#include "xparameters.h"
#include "xuartlite_l.h"
#include <stddef.h>
#include <stdio.h>
#include <string.h>

// Logging blocks when the buffer is full.  Sometimes we want very
// verbose logging.  If the buffer is not large enough logging takes so
// long that requests time out.

#define OUTPUT_BUFFER_SIZE 1048576

#define BASEADDR XPAR_UART_BASEADDR

// Output buffer, where `output_buffer_read == output_buffer_write` means
// empty.

static unsigned output_buffer_read, output_buffer_write;
static char output_buffer_data[OUTPUT_BUFFER_SIZE]
    __attribute__((section("DRAM_DATA")));

static void send_byte_dont_block(char ch) {
  XUartLite_WriteReg(BASEADDR, XUL_TX_FIFO_OFFSET, ch);
}

/**
 * Send the character, block when FIFO is full.
 *
 * @param ch Character to send
 */
static void send_byte_block(char ch) {
  while (XUartLite_IsTransmitFull(BASEADDR))
    ;
  send_byte_dont_block(ch);
}

/**
 * Flush as many characters in the buffer as possible until the buffer
 * is empty or the hardware FIFO is full.
 */
static void try_flush(void) {
  unsigned rd = output_buffer_read, wr = output_buffer_write;
  while (rd != wr && !XUartLite_IsTransmitFull(BASEADDR)) {
    send_byte_dont_block(output_buffer_data[rd]);
    rd = (rd + 1) % OUTPUT_BUFFER_SIZE;
  }
  output_buffer_read = rd;
}

void flush_log(void) {
  unsigned rd = output_buffer_read, wr = output_buffer_write;
  while (rd != wr) {
    send_byte_block(output_buffer_data[rd]);
    rd = (rd + 1) % OUTPUT_BUFFER_SIZE;
  }
  output_buffer_read = rd;
}

static void putchar_binmode(char ch) {
  unsigned rd = output_buffer_read, wr = output_buffer_write;

  output_buffer_data[wr] = ch;

  output_buffer_write = wr = (wr + 1) % OUTPUT_BUFFER_SIZE;

  if (wr == rd) {
    // Full
    send_byte_block(output_buffer_data[rd]);
    output_buffer_read = rd = (rd + 1) % OUTPUT_BUFFER_SIZE;
  }

  // Try flushing
  try_flush();
}

void uart_interrupt_handler(void) { try_flush(); }

void outbyte(char ch) {
  if (ch == '\n')
    putchar_binmode('\r');
  putchar_binmode(ch);
}

char inbyte(void) {
  // Not used
  return -1;
}

void uart_init(void) {
  output_buffer_read = 0;
  output_buffer_write = 0;

  setvbuf(stdout, NULL, _IONBF, 0);

  XUartLite_EnableIntr(BASEADDR);
}
