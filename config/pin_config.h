#ifndef PIN_CONFIG_H
#define PIN_CONFIG_H

// $[CMU]
// [CMU]$

// $[LFXO]
// [LFXO]$

// $[PRS.ASYNCH0]
// [PRS.ASYNCH0]$

// $[PRS.ASYNCH1]
// [PRS.ASYNCH1]$

// $[PRS.ASYNCH2]
// [PRS.ASYNCH2]$

// $[PRS.ASYNCH3]
// [PRS.ASYNCH3]$

// $[PRS.ASYNCH4]
// [PRS.ASYNCH4]$

// $[PRS.ASYNCH5]
// [PRS.ASYNCH5]$

// $[PRS.ASYNCH6]
// [PRS.ASYNCH6]$

// $[PRS.ASYNCH7]
// [PRS.ASYNCH7]$

// $[PRS.ASYNCH8]
// [PRS.ASYNCH8]$

// $[PRS.ASYNCH9]
// [PRS.ASYNCH9]$

// $[PRS.ASYNCH10]
// [PRS.ASYNCH10]$

// $[PRS.ASYNCH11]
// [PRS.ASYNCH11]$

// $[PRS.SYNCH0]
// [PRS.SYNCH0]$

// $[PRS.SYNCH1]
// [PRS.SYNCH1]$

// $[PRS.SYNCH2]
// [PRS.SYNCH2]$

// $[PRS.SYNCH3]
// [PRS.SYNCH3]$

// $[GPIO]
// [GPIO]$

// $[TIMER0]
// [TIMER0]$

// $[TIMER1]
// [TIMER1]$

// $[TIMER2]
// [TIMER2]$

// $[TIMER3]
// [TIMER3]$

// $[TIMER4]
// [TIMER4]$

// $[USART0]
// [USART0]$

// $[USART1]
// USART1 CLK on PA04
#define USART1_CLK_PORT                          gpioPortA
#define USART1_CLK_PIN                           4

// USART1 RX on PA05
#define USART1_RX_PORT                           gpioPortA
#define USART1_RX_PIN                            5

// USART1 TX on PA06
#define USART1_TX_PORT                           gpioPortA
#define USART1_TX_PIN                            6

// [USART1]$

// $[I2C1]
// [I2C1]$

// $[PDM]
// [PDM]$

// $[LETIMER0]
// [LETIMER0]$

// $[IADC0]
// [IADC0]$

// $[I2C0]
// [I2C0]$

// $[EUART0]
// EUART0 RX on PB00
#define EUART0_RX_PORT                           gpioPortB
#define EUART0_RX_PIN                            0

// EUART0 TX on PB01
#define EUART0_TX_PORT                           gpioPortB
#define EUART0_TX_PIN                            1

// [EUART0]$

// $[PTI]
// [PTI]$

// $[MODEM]
// [MODEM]$

// $[CUSTOM_PIN_NAME]
#define GPIO1_PORT                               gpioPortA
#define GPIO1_PIN                                0

#define SPI_CPU_SCLK_PORT                        gpioPortA
#define SPI_CPU_SCLK_PIN                         4

#define SPI_CPU_MISO_PORT                        gpioPortA
#define SPI_CPU_MISO_PIN                         5

#define SPI_CPU_MOSI_PORT                        gpioPortA
#define SPI_CPU_MOSI_PIN                         6

#define SPI_CPU_CS_PORT                          gpioPortA
#define SPI_CPU_CS_PIN                           7

#define RX_USB_PORT                              gpioPortB
#define RX_USB_PIN                               0

#define TX_USB_PORT                              gpioPortB
#define TX_USB_PIN                               1

#define ON_OFF_SEN_PORT                          gpioPortB
#define ON_OFF_SEN_PIN                           2

#define ON_OFF_FPGA_PORT                         gpioPortB
#define ON_OFF_FPGA_PIN                          4

#define ICE_MOSI_PORT                            gpioPortC
#define ICE_MOSI_PIN                             0

#define ICE_MISO_PORT                            gpioPortC
#define ICE_MISO_PIN                             1

#define ICE_SCK_PORT                             gpioPortC
#define ICE_SCK_PIN                              2

#define EN_FPGA_LP_PORT                          gpioPortC
#define EN_FPGA_LP_PIN                           7

// [CUSTOM_PIN_NAME]$

#endif // PIN_CONFIG_H

