#include "interrupts.h"
#include "sd-card.h"
#include "sd-host.h"
#include "time.h"
#include "uart.h"
#include "xintc.h"
#include "xintc_l.h"
#include "xparameters.h"

#define BASEADDR XPAR_MICROBLAZE_0_AXI_INTC_BASEADDR

void interrupts_init(void) {
  // This variable is not used besides to pass to XIntc_Initialize which
  // needs an XIntc instance
  XIntc InterruptController;
  // Only used to set up XIntc_BitPosMask for XIntc_RegisterFastHandler
  XIntc_Initialize(&InterruptController, XPAR_MICROBLAZE_0_AXI_INTC_DEVICE_ID);

  // Register interrupt handlers
  const XFastInterruptHandler handlers[] = {
      [XPAR_MICROBLAZE_0_AXI_INTC_UART_INTERRUPT_INTR] = uart_interrupt_handler,
      [XPAR_MICROBLAZE_0_AXI_INTC_SD_CARD_WRAPPER_SD_CARD_INTERRUPT_INTR] =
          sd_card_interrupt_handler,
      [XPAR_MICROBLAZE_0_AXI_INTC_SD_HOST_INTERRUPT_INTR] =
          sd_host_interrupt_handler,
      [XPAR_MICROBLAZE_0_AXI_INTC_TIMER_INTERRUPT_INTR] =
          timer_interrupt_handler};
  for (unsigned i = 0; i < sizeof(handlers) / sizeof(handlers[0]); i++)
    XIntc_RegisterFastHandler(BASEADDR, i, handlers[i]);

  // Enable interrupts
  XIntc_EnableIntr(BASEADDR, XPAR_UART_INTERRUPT_MASK |
                                 XPAR_SD_CARD_WRAPPER_SD_CARD_INTERRUPT_MASK |
                                 XPAR_SD_HOST_INTERRUPT_MASK |
                                 XPAR_TIMER_INTERRUPT_MASK);

  // Enable hardware interrupts in the interrupt controller
  XIntc_MasterEnable(BASEADDR);
}
