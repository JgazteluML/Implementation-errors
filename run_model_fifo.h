#ifndef RUN_MODEL_FIFO_H
#define RUN_MODEL_FIFO_H


#include <string.h>


#include "app_log.h"
#include "pin_config.h"

#include "edge-impulse-sdk/classifier/ei_run_classifier.h"
//#include "edge-impulse-sdk/dsp/numpy.hpp"
//
//
//#include "edge-impulse-sdk/dsp/spectral/spectral.hpp"
//#include "edge-impulse-sdk/dsp/spectral/processing.hpp"



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

static struct bma400_dev vg_bma400_handle;
static struct bma400_sensor_conf vg_bma400_conf;
static struct bma400_sensor_data vg_bma400_data[FIFO_ACCEL_FRAME_COUNT];
static struct bma400_int_enable vg_bma400_int_en;
static struct bma400_device_conf vg_bma400_fifo_conf;
static struct bma400_fifo_data vg_bma400_fifo_frame;
uint16_t int_status = 0;
uint8_t fifo_buff[FIFO_SIZE_FULL] = { 0 };
uint16_t u16_int_status;
uint16_t accel_frames_req = FIFO_ACCEL_FRAME_COUNT;

static s_SPI_Interface_t vs_s_bma400_spi_if;

static int get_signal_data(size_t offset, size_t length, float *out_ptr);

void bma400_pin_config(void);

void runInference(void);

int8_t init_bma_handle(void);

void inference_loop(int8_t i8_retval);


#endif  // RUN_MODEL_FIFO_H
