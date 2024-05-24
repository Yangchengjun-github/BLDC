/*
  ******************************************************************************
  * @file    main.c
  * @author  APT AE Team
  * @version V1.17
  * @date    2023/08/30
  ******************************************************************************
  *THIS SOFTWARE WHICH IS FOR ILLUSTRATIVE PURPOSES ONLY WHICH PROVIDES 
  *CUSTOMER WITH CODING INFORMATION REGARDING THEIR PRODUCTS.
  *APT CHIP SHALL NOT BE HELD RESPONSIBILITY ADN LIABILITY FOR ANY DIRECT, 
  *INDIRECT DAMAGES WITH RESPECT TO ANY CLAIMS ARISING FROM THE CONTENT OF 
  *SUCH SOFTWARE AND/OR THE USE MADE BY CUSTOMERS OF THE CODING INFORMATION 
  *CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.AND APT CHIP RESERVES 
  *THE RIGHT TO MAKE CHANGES IN THE SOFTWARE WITHOUT NOTIFICATION
  ******************************************************************************
  */
/****************************************************
//include
*****************************************************/
#include "apt32f102.h"
#include "apt32f102_adc.h"
#include "apt32f102_bt.h"
#include "apt32f102_coret.h"
#include "apt32f102_countera.h"
#include "apt32f102_crc.h"
#include "apt32f102_ept.h"
#include "apt32f102_et.h"
#include "apt32f102_gpio.h"
#include "apt32f102_gpt.h"
#include "apt32f102_i2c.h"
#include "apt32f102_ifc.h"
#include "apt32f102_lpt.h"
#include "apt32f102_rtc.h"
#include "apt32f102_sio.h"
#include "apt32f102_spi.h"
#include "apt32f102_syscon.h"
#include "apt32f102_uart.h"
#include "apt32f102_wwdt.h"
#include "apt32f102_types_local.h"
#include "apt32f102_tkey.h"
#include "bldc.h"

extern void my_printf(const char *fmt, ...);
/****************************************************
//define
*****************************************************/

/****************************************************
//extern
*****************************************************/
extern void delay_nms(unsigned int t);
extern void APT32F102_init(void);


/***************************************************/
//main
/**************************************************/
int main(void) 
{
  static U16_T timer = 0 ;
	delay_nms(2000);							//power on delay if needed
	APT32F102_init();							//102 initial

  
 
  
   
   ADC_CONFIG();
   bldcInit();
   while (1)
   {
     SYSCON_IWDCNT_Reload();
      if(bldc.task_run == 1)
      {
        bldc.task_run = 0;

        if(bldc.timer_stuff)
        {
          bldc.timer_stuff--;
        }
        else
        {
          bldc.timer_stuff = 1000;
          bldc.status = open;
        }


        if(bldc.status == open)
        {

          timer++;
          if (timer >1000)
          {
            timer = 0;
            bldc.delay = _NO;
             //bldc.xiao = _OK;
            bldc.status = close;
          }
          blcdStart();
        }
        else
        {

        }
        
      }
      if(bldc.motor_run)
      {
        bldc.motor_run = 0;
        adc_get();
      }
     
     
  }
}
/******************* (C) COPYRIGHT 2019 APT Chip *****END OF FILE****/