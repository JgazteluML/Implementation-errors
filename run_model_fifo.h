#ifndef RUN_MODEL_FIFO_H
#define RUN_MODEL_FIFO_H


#include <string.h>
#include "sl_spidrv_instances.h"
#include "em_usart.h"
#include "em_emu.h"
#include "em_core.h"

#include "app_log.h"
#include "pin_config.h"

#include "edge-impulse-sdk/classifier/ei_run_classifier.h"
#include "edge-impulse-sdk/dsp/numpy.hpp"

#include "bma400_defs.h"
#include "bma400.h"

#include "sl_sleeptimer.h"

void bma400_pin_config(void);

void inference_loop(void);

void runInference(void);

int8_t init_bma_handle(void);


/***************************************************************************//**
 * Defines & Macros.
 ******************************************************************************/

/* Earth's gravity in m/s^2 */
//#define GRAVITY_EARTH     (9.80665f)

/* 39.0625us per tick */
#define SENSOR_TICK_TO_S  (0.0000390625f) //25.6kHz clock

/* Total FIFO size */
#define FIFO_SIZE               UINT16_C(1024)
#define FIFO_WATERMARK_LEVEL    EI_CLASSIFIER_RAW_SAMPLE_COUNT*7

/* Add extra bytes to get complete fifo data */
#define FIFO_SIZE_FULL          (FIFO_SIZE + BMA400_FIFO_BYTES_OVERREAD)

/*! Number of accel frames to be extracted from FIFO
 * Calculation:
 * fifo_buffer = 1024, accel_frame_len = 6, header_byte = 1.
 * fifo_accel_frame_count = (1024 / (6 + 1)) = 146 frames
 */
#define FIFO_ACCEL_FRAME_COUNT  EI_CLASSIFIER_RAW_SAMPLE_COUNT

/***************************************************************************//**
 * Edge Impulse
 ******************************************************************************/

static int get_signal_data(size_t offset, size_t length, float *out_ptr);

uint16_t count=0;
float arrCount=0,izqCount=0,estCount=0,uncertain=0;
uint8_t scoreCount=0;
float arrScore=0,estScore=0,izqScore=0,uncScore=0;

//ei_impulse_t impulso;
//EI_IMPULSE_ERROR impulse_err;

/***************************************************************************//**
 * Typedefs.
 ******************************************************************************/
typedef struct {
  uint32_t port;
  uint32_t pin;
} s_GPIO_Params_t;

typedef struct {
  USART_TypeDef *spi_port;
  s_GPIO_Params_t cs_gpio;
} s_SPI_Interface_t;

/***************************************************************************//**
 * Prototypes.
 ******************************************************************************/
static int8_t SPI_READ(uint8_t reg_addr, uint8_t *reg_data, uint32_t length,
                       void *intf_ptr);

static int8_t SPI_WRITE(uint8_t reg_addr, const uint8_t *reg_data, uint32_t length,
                        void *intf_ptr);

static void DELAY_US(uint32_t period, void *intf_ptr);



/***************************************************************************//**
 * Static Functions.
 ******************************************************************************/
/**
 * @brief      SPI Read interface for BMA400
 *             Driver internally handles R|W address bit
 *             TODO: Eval failure cases
 *
 * @param[in]  reg_addr  The register address
 * @param      reg_data  The register data
 * @param[in]  length    The length
 * @param      intf_ptr  Pointer to s_GPIO_Params_t CS struct
 *
 * @return     { description_of_the_return_value }
 */
static int8_t SPI_READ(uint8_t reg_addr, uint8_t *reg_data, uint32_t length,
                       void *intf_ptr)
{
  int8_t i8_retval = 0;
  uint32_t u32_index;
  s_SPI_Interface_t *spi_if;

  if (!intf_ptr)
    { return BMA400_E_NULL_PTR; }

  spi_if = (s_SPI_Interface_t *)intf_ptr;

#ifdef ENABLE_SPI_LOGS
  app_log("SPI_READ(0x%X, 0x%X, %u, 0x%X)\r\n",reg_addr, reg_data, length, intf_ptr);
#endif

  GPIO_PinOutClear(spi_if->cs_gpio.port, spi_if->cs_gpio.pin);

  /* TODO: Add timeout as COM Failure */

  /* Transfer Address */
  USART_SpiTransfer(spi_if->spi_port, reg_addr);

  for ( u32_index = 0; u32_index < length; u32_index++)
    {
      /* Write lenght number of bytes */
      *(reg_data+u32_index) = USART_SpiTransfer(spi_if->spi_port, 0xFF); /* Send Dummy Bytes */
#ifdef ENABLE_SPI_LOGS
      app_log("data[%d] 0x%X\r\n", u32_index, *(reg_data+u32_index));
#endif
    }

  GPIO_PinOutSet(spi_if->cs_gpio.port, spi_if->cs_gpio.pin);

  return i8_retval;
}

/**
 * @brief      SPI Write interface for BMA400
 *             Driver internally handles R|W address bit
 *             TODO: Eval failure cases
 *
 * @param[in]  reg_addr  The register address
 * @param[in]  reg_data  The register data
 * @param[in]  length    The length
 * @param      intf_ptr  Pointer to s_GPIO_Params_t CS struct
 *
 * @return     { description_of_the_return_value }
 */
static int8_t SPI_WRITE(uint8_t reg_addr, const uint8_t *reg_data, uint32_t length,
                        void *intf_ptr)
{
  int8_t i8_retval = BMA400_OK;
  uint32_t u32_index;
  s_SPI_Interface_t *spi_if;

  if (!intf_ptr)
    { return BMA400_E_NULL_PTR; }

  spi_if = (s_SPI_Interface_t *)intf_ptr;

#ifdef ENABLE_SPI_LOGS
  app_log("SPI_WRITE(0x%X, 0x%X, %u, 0x%X)\r\n", reg_addr, reg_data, length, intf_ptr);
#endif

  GPIO_PinOutClear(spi_if->cs_gpio.port, spi_if->cs_gpio.pin);

  /* TODO: Add timeout as COM Failure */

  /* Transfer Address */
  USART_SpiTransfer(spi_if->spi_port, reg_addr);

  for ( u32_index = 0; u32_index < length; u32_index++)
    {
#ifdef ENABLE_SPI_LOGS
      app_log("data[%d] 0x%X\r\n", u32_index, *(reg_data+u32_index));
#endif
      /* Write lenght number of bytes */
      USART_SpiTransfer(spi_if->spi_port, *(reg_data+u32_index));
    }

  GPIO_PinOutSet(spi_if->cs_gpio.port, spi_if->cs_gpio.pin);

  return i8_retval;
}

/**
 * @brief      Delay in microseconds
 *
 * @param[in]  period    The period
 * @param      intf_ptr  The intf pointer
 */
static void DELAY_US(uint32_t period, void *intf_ptr)
{
#ifdef ENABLE_SPI_LOGS
  app_log("DELAY_US(%lu, 0x%X)\r\n", period, intf_ptr);
#endif
  sl_sleeptimer_delay_millisecond((period/1000)+1);
}

/**
 * @brief      Utility function to convert acceleration LSB to m/s^2
 *
 * @param[in]  accel_data  The accel data
 * @param[in]  g_range     The g range
 * @param[in]  bit_width   The bit width
 *
 * @return     { description_of_the_return_value }
 */
//static float lsb_to_ms2(int16_t accel_data, uint8_t g_range, uint8_t bit_width)
//{
//  float accel_ms2;
//  int16_t half_scale;
//
//  half_scale = 1 << (bit_width - 1);
//  accel_ms2 = (GRAVITY_EARTH * accel_data * g_range) / half_scale;
//
//  return accel_ms2;
//}

/**
 * @brief      Gets the signal data.
 *
 * @param[in]  offset   The offset
 * @param[in]  length   The length
 * @param      out_ptr  The out pointer
 *
 * @return     The signal data.
 */


/**
 * @brief      Runs the inference
 */
void runInference(void){

  signal_t signal;            // Wrapper for raw input buffer
  ei_impulse_result_t result; // Used to store inference output
  EI_IMPULSE_ERROR res;
  uint8_t prevVal=0;
  int8_t indice=0;

  //  size_t buf_len = sizeof(bma400_data) / sizeof(bma400_data[0]);
  // Assign callback function to fill buffer used for preprocessing/inference
  signal.total_length = EI_CLASSIFIER_DSP_INPUT_FRAME_SIZE;
  signal.get_data = &get_signal_data;



  GPIO_PinOutClear(ICE_MOSI_PORT, ICE_MOSI_PIN);
  sl_sleeptimer_delay_millisecond(0.1);

  GPIO_PinOutSet(ICE_MOSI_PORT, ICE_MOSI_PIN);



  // Perform DSP pre-processing and inference
  res = run_classifier(&signal, &result, false);




  GPIO_PinOutClear(ICE_MOSI_PORT, ICE_MOSI_PIN);


  app_log("Timing: DSP %d ms, inf %d ms, anom %d ms\r\n",result.timing.dsp,result.timing.classification,result.timing.anomaly);
//  app_log("Predictions:\r\n");
//  for (uint8_t i = 0; i < EI_CLASSIFIER_LABEL_COUNT; i++) {
//      app_log("  %s: %.5f\r\n", ei_classifier_inferencing_categories[i], result.classification[i].value);
//
//  }

#if EI_CLASSIFIER_HAS_ANOMALY == 1
//  printf("Anomaly prediction: %.3f\r\n", result.anomaly);
#endif
  if((result.classification[0].value>result.classification[1].value) | (result.classification[0].value>result.classification[2].value)){
      arrCount++;
  }
  else if((result.classification[1].value>result.classification[0].value) | (result.classification[1].value>result.classification[2].value)){
      estCount++;
  }
  else if((result.classification[2].value>result.classification[0].value) | (result.classification[2].value>result.classification[1].value)){
      izqCount++;
  }
  else{
      uncertain++;
  }

  prevVal=0;
//  res=EI_IMPULSE_OK;
  scoreCount++;

      if(scoreCount==40){
          //arr=true;
          arrScore=100*arrCount/scoreCount;
          estScore=100*estCount/scoreCount;
          izqScore=100*izqCount/scoreCount;
          uncScore=100*uncertain/scoreCount;
          app_log("%s: %1.3f|%s: %1.3f|%s: %1.3f|uncertain: %1.3f\r\n", ei_classifier_inferencing_categories[0],arrScore,ei_classifier_inferencing_categories[1],estScore,ei_classifier_inferencing_categories[2],izqScore,uncScore);
          scoreCount=0;
          arrCount=0;
          estCount=0;
          izqCount=0;
          uncertain=0;

      }

      GPIO_PinOutSet(ICE_MISO_PORT, ICE_MISO_PIN);
      EMU_EnterEM2(true);//EMU_EnterEM1 //EMpeta
}


/***************************************************************************//**
 * Gobal Variables.
 ******************************************************************************/
static struct bma400_dev vg_bma400_handle;
static struct bma400_sensor_conf vg_bma400_conf;
static struct bma400_sensor_data vg_bma400_data[FIFO_ACCEL_FRAME_COUNT];
static struct bma400_int_enable vg_bma400_int_en;
static struct bma400_device_conf vg_bma400_fifo_conf;
static struct bma400_fifo_data vg_bma400_fifo_frame;
uint16_t int_status = 0;
uint8_t fifo_buff[FIFO_SIZE_FULL] = { 0 };
uint16_t accel_frames_req = FIFO_ACCEL_FRAME_COUNT;
uint16_t u16_int_status;
static s_SPI_Interface_t vs_s_bma400_spi_if;

int8_t init_bma_handle(void){

  int8_t i8_retval = BMA400_OK;

  memset(&vg_bma400_handle, 0, sizeof(vg_bma400_handle));

  /* SPI ONLY CONFIG */
  vg_bma400_handle.read = SPI_READ;
  vg_bma400_handle.write = SPI_WRITE;
  vg_bma400_handle.intf = BMA400_SPI_INTF;
  vg_bma400_handle.dummy_byte = 1; /* TODO: Check */
  /* END SPI ONLY CONFIG */

  /* SPI Interface Specific config */

  vs_s_bma400_spi_if.spi_port = USART1;
  vs_s_bma400_spi_if.cs_gpio.port = SPI_CPU_CS_PORT;
  vs_s_bma400_spi_if.cs_gpio.pin = SPI_CPU_CS_PIN;

  GPIO_PinModeSet(vs_s_bma400_spi_if.cs_gpio.port, vs_s_bma400_spi_if.cs_gpio.pin, gpioModePushPull, 1);
  GPIO_PinOutSet(vs_s_bma400_spi_if.cs_gpio.port, vs_s_bma400_spi_if.cs_gpio.pin);
  /* End SPI Interface Specific config */

  /* General config */
  vg_bma400_handle.intf_ptr = &vs_s_bma400_spi_if;
  vg_bma400_handle.delay_us = DELAY_US;
  /* End General config */


  /* INIT ACCELEROMETER DRIVER */
  i8_retval += bma400_soft_reset(&vg_bma400_handle);

  i8_retval += bma400_init(&vg_bma400_handle);

  /* Select the type of configuration to be modified */
  vg_bma400_conf.type = BMA400_ACCEL;


  i8_retval += bma400_get_sensor_conf(&vg_bma400_conf, 1, &vg_bma400_handle);

  vg_bma400_conf.param.accel.odr = BMA400_ODR_100HZ;
  vg_bma400_conf.param.accel.range = BMA400_RANGE_2G;
  vg_bma400_conf.param.accel.data_src = BMA400_DATA_SRC_ACCEL_FILT_1;
  /* Set the desired configurations to the sensor */
  i8_retval += bma400_set_sensor_conf(&vg_bma400_conf, 1, &vg_bma400_handle);


  i8_retval += bma400_set_power_mode(BMA400_MODE_NORMAL, &vg_bma400_handle);

  vg_bma400_fifo_conf.type = BMA400_FIFO_CONF;//BMA400_FIFO_WM_INT_EN BMA400_FIFO_CONF

  i8_retval += bma400_get_device_conf(&vg_bma400_fifo_conf, 1, &vg_bma400_handle);

  vg_bma400_fifo_conf.param.fifo_conf.conf_regs = BMA400_FIFO_X_EN | BMA400_FIFO_Y_EN | BMA400_FIFO_Z_EN;
  vg_bma400_fifo_conf.param.fifo_conf.conf_status = BMA400_ENABLE;
  vg_bma400_fifo_conf.param.fifo_conf.fifo_watermark = FIFO_WATERMARK_LEVEL;
  vg_bma400_fifo_conf.param.fifo_conf.fifo_wm_channel = BMA400_INT_CHANNEL_1;

  i8_retval+=bma400_set_device_conf(&vg_bma400_fifo_conf, 1, &vg_bma400_handle);


  vg_bma400_fifo_frame.data = fifo_buff;
  vg_bma400_fifo_frame.length = FIFO_SIZE_FULL;

  vg_bma400_int_en.type =BMA400_FIFO_WM_INT_EN;
  vg_bma400_int_en.conf = BMA400_ENABLE;
  i8_retval += bma400_enable_interrupt(&vg_bma400_int_en, 1, &vg_bma400_handle);

  return i8_retval;
}

static int get_signal_data(size_t offset, size_t length, float *out_ptr) {
 for (uint16_t index = 0; index < accel_frames_req; index++)
    {
      out_ptr[count+0]=vg_bma400_data[index].x;
      out_ptr[count+1]=vg_bma400_data[index].y;
      out_ptr[count+2]=vg_bma400_data[index].z;
      count+=3;
    }
  count=0;

  return EIDSP_OK;
}






void bma400_pin_config(void){
  app_log("red implementada: %s\r\n",EI_CLASSIFIER_PROJECT_NAME);
    int8_t i8_retval;
    uint16_t u16_int_status;

    GPIO_PinModeSet(SPI_CPU_CS_PORT, SPI_CPU_CS_PIN, gpioModePushPull, 1);
    GPIO_PinModeSet(ON_OFF_FPGA_PORT, ON_OFF_FPGA_PIN, gpioModePushPull, 1);
    GPIO_PinModeSet(ICE_MOSI_PORT, ICE_MOSI_PIN, gpioModePushPull, 0);//gpioModeInputPull gpioModePushPull
    GPIO_PinModeSet(ICE_MISO_PORT, ICE_MISO_PIN, gpioModePushPull, 0);
    GPIO_PinModeSet(GPIO1_PORT, GPIO1_PIN, gpioModeInput, 1);

  //  GPIO->IF_CLR |= _GPIO_IF_MASK;
  //
  //  GPIO->EXTIRISE_SET

    GPIO_IntConfig(GPIO1_PORT,GPIO1_PIN,1,0,1);

    NVIC_ClearPendingIRQ(GPIO_ODD_IRQn);
    NVIC_EnableIRQ(GPIO_ODD_IRQn );//+ (GPIO1_PIN_NUMBER / 2)
}


void inference_loop(int8_t i8_retval){
  while (i8_retval == BMA400_OK)
      {
        i8_retval = bma400_get_interrupt_status(&u16_int_status, &vg_bma400_handle);
        if (i8_retval != BMA400_OK)
          { break; }

        if (u16_int_status & BMA400_ASSERTED_FIFO_WM_INT)// BMA400_ASSERTED_DRDY_INT  BMA400_ASSERTED_FIFO_FULL_INT
          {
            GPIO_PinOutSet(ICE_MOSI_PORT, ICE_MOSI_PIN);

            bma400_get_fifo_data(&vg_bma400_fifo_frame,&vg_bma400_handle);
            accel_frames_req = FIFO_ACCEL_FRAME_COUNT;
            bma400_extract_accel(&vg_bma400_fifo_frame, vg_bma400_data, &accel_frames_req, &vg_bma400_handle);

            runInference();
  //          EMU_EnterEM2(true);
          }

      }

    app_log("\r\nBMA400 OP Error\r\n");

    while(1){}
}


void GPIO_EVEN_IRQHandler(void)
{
  if (GPIO_IntGet() & (1 << GPIO1_PIN)) {
    // Código que se ejecutará en la interrupción de flanco de subida en GPIO1
//      CORE_EXIT_CRITICAL();
    // Limpiar la flag de interrupción de GPIO1
    GPIO_IntClear(1 << GPIO1_PIN);



    GPIO_PinOutClear(ICE_MISO_PORT, ICE_MISO_PIN);
    GPIO_PinOutSet(ICE_MOSI_PORT, ICE_MOSI_PIN);
    GPIO_PinOutClear(ICE_MOSI_PORT, ICE_MOSI_PIN);
    app_log("\r\nInterrupción EVEN detectada -> OK\r\n");
//    sl_sleeptimer_delay_millisecond(5);
  }
}

void GPIO_ODD_IRQHandler(void)
{
//  if (GPIO_IntGet() & (1 << ICE_MISO_PIN)) {
  if (GPIO->IF & (1 << ICE_MISO_PIN)) {
    // Código que se ejecutará en la interrupción de flanco de subida en GPIO1
//      CORE_EXIT_CRITICAL();
    // Limpiar la flag de interrupción de GPIO1
//    GPIO_IntClear(1 << ICE_MISO_PIN);
      GPIO->IF_CLR = (1 << ICE_MISO_PIN);

    app_log("\r\nInterrupción ODD detectada -> OK\r\n");
//    sl_sleeptimer_delay_millisecond(5);
  }
}

#endif  // RUN_MODEL_FIFO_H
