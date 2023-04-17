/***************************************************************************//**
 * @file
 * @brief Top level application functions
 *******************************************************************************
 * # License
 * <b>Copyright 2020 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc. Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/

#include <string.h>
#include "sl_spidrv_instances.h"
#include "em_usart.h"
#include "em_emu.h"
#include "em_core.h"

//#include "app_log.h"
//#include "pin_config.h"

//#include "edge-impulse-sdk/classifier/ei_run_classifier.h"
//#include "edge-impulse-sdk/dsp/numpy.hpp"

//#include "bma400_defs.h"
//#include "bma400.h"
//#include "bma400.c"

//#include "sl_sleeptimer.h"

#include "run_model_fifo.h"

int8_t i8_retval=0;



/***************************************************************************//**
 * Initialize application.
 ******************************************************************************/





void app_init(void)
{

  bma400_pin_config();
  //  init_bma_handle();
  if ((i8_retval = init_bma_handle()) != BMA400_OK)
    {
      app_log("\r\nBMA400 Init Error\r\n");
      while(1){}
    }
  app_log("\r\nBMA400 Init -> OK\r\n");

  EMU_EnterEM2(true);



}


/***************************************************************************//**
 * App ticking function.
 ******************************************************************************/
void app_process_action(void)
{
  inference_loop(i8_retval);

}




