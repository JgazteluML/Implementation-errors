#include "spidrv.h"
#include "sl_spidrv_instances.h"
#include "sl_assert.h"


#include "sl_spidrv_usart_SPI_CPU_config.h"

SPIDRV_HandleData_t sl_spidrv_usart_SPI_CPU_handle_data;
SPIDRV_Handle_t sl_spidrv_usart_SPI_CPU_handle = &sl_spidrv_usart_SPI_CPU_handle_data;

SPIDRV_Init_t sl_spidrv_usart_init_SPI_CPU = {
  .port = SL_SPIDRV_USART_SPI_CPU_PERIPHERAL,
#if defined(_USART_ROUTELOC0_MASK)
  .portLocationTx = SL_SPIDRV_USART_SPI_CPU_TX_LOC,
  .portLocationRx = SL_SPIDRV_USART_SPI_CPU_RX_LOC,
  .portLocationClk = SL_SPIDRV_USART_SPI_CPU_CLK_LOC,
#if defined(SL_SPIDRV_USART_SPI_CPU_CS_LOC)
  .portLocationCs = SL_SPIDRV_USART_SPI_CPU_CS_LOC,
#endif
#elif defined(_GPIO_USART_ROUTEEN_MASK)
  .portTx = SL_SPIDRV_USART_SPI_CPU_TX_PORT,
  .portRx = SL_SPIDRV_USART_SPI_CPU_RX_PORT,
  .portClk = SL_SPIDRV_USART_SPI_CPU_CLK_PORT,
#if defined(SL_SPIDRV_USART_SPI_CPU_CS_PORT)
  .portCs = SL_SPIDRV_USART_SPI_CPU_CS_PORT,
#endif
  .pinTx = SL_SPIDRV_USART_SPI_CPU_TX_PIN,
  .pinRx = SL_SPIDRV_USART_SPI_CPU_RX_PIN,
  .pinClk = SL_SPIDRV_USART_SPI_CPU_CLK_PIN,
#if defined(SL_SPIDRV_USART_SPI_CPU_CS_PIN)
  .pinCs = SL_SPIDRV_USART_SPI_CPU_CS_PIN,
#endif
#else
  .portLocation = SL_SPIDRV_USART_SPI_CPU_ROUTE_LOC,
#endif
  .bitRate = SL_SPIDRV_USART_SPI_CPU_BITRATE,
  .frameLength = SL_SPIDRV_USART_SPI_CPU_FRAME_LENGTH,
  .dummyTxValue = 0,
  .type = SL_SPIDRV_USART_SPI_CPU_TYPE,
  .bitOrder = SL_SPIDRV_USART_SPI_CPU_BIT_ORDER,
  .clockMode = SL_SPIDRV_USART_SPI_CPU_CLOCK_MODE,
  .csControl = SL_SPIDRV_USART_SPI_CPU_CS_CONTROL,
  .slaveStartMode = SL_SPIDRV_USART_SPI_CPU_SLAVE_START_MODE,
};

void sl_spidrv_init_instances(void) {
#if !defined(SL_SPIDRV_EUSART_SPI_CPU_CS_PIN)
  EFM_ASSERT(sl_spidrv_usart_init_SPI_CPU.csControl == spidrvCsControlAuto);
#endif
  SPIDRV_Init(sl_spidrv_usart_SPI_CPU_handle, &sl_spidrv_usart_init_SPI_CPU);
}
