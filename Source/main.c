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
  static U16_T timer_open = 0 ;
  static U16_T timer_align = 0;
  static U16_T timer_close = 0;

  static U8_T control_start;

  static U16_T timer_debug = 0;


	delay_nms(1000);							//power on delay if needed
	APT32F102_init();							//102 initial

  
 
  
   
   ADC_CONFIG();
   bldcInit();
   while (1)
   {
     SYSCON_IWDCNT_Reload();
      if(bldc.task_run == 1)
      {
        // if(++timer_debug > 500)
        // {
        //   timer_debug =0;
        //   printf("bldc.statuc%d,stuff%d\n",bldc.status,bldc.timer_stuff);
        // }
       // printf("%d,%d,%d\n",adc_value[0],adc_value[1],adc_value[2]);//打印adc值
        printf("%d\n",bldc.timer_phase1);
        bldc.task_run = 0;

        if(bldc.timer_stuff)
        {
          bldc.timer_stuff--;
        }
        else
        {
          bldc.timer_stuff = 200;
          bldc.status = ALIGN;
          control_start = 1;
        }

        switch(bldc.status)
        {
        case ALIGN:
          timer_align++;
          bldc.step = 0;
          stepMoter();
          if(timer_align > 3)
          {
            timer_align = 0;
            bldc.status = OPEN;

          }
          break;

        case OPEN:
          blcdStart(&control_start);
          timer_close++;

          if (timer_close > 100)
          {
            timer_close = 0;
            bldc.xiao = _OK;
            bldc.status = CLOSE;
          }

          break;
        case CLOSE:

          break;
        }

        
        
      }
      if(bldc.motor_run)
      {
        bldc.motor_run = 0;
        
      }
     
     
  }
}
/******************* (C) COPYRIGHT 2019 APT Chip *****END OF FILE****/