#ifndef _UART_H
#define _UART_H

extern void uart_interrupt_handler(void) __attribute__((fast_interrupt));

extern void uart_init(void);

#endif
