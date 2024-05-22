#include "bldc.h"

xbldc_t bldc;
void blcdStart(void);
void stepMoter(void);
void bldc_delay(void)
{

}


void bldcInit(void)
{
    GPIO_Init(GAL_PORT, GAL_PIN, 0);
    GPIO_Init(GBL_PORT, GBL_PIN, 0);
    GPIO_Init(GCL_PORT, GCL_PIN, 0);
    GPIO_Init(GAB_PORT, GAB_PIN, 0);
    GPIO_Init(GBB_PORT, GBB_PIN, 0);
    GPIO_Init(GCB_PORT, GCB_PIN, 0);
}

void blcdStart(void)
{
    stepMoter()  ;
    delay_nms(100); //delay 100ms
}


void stepMoter(void)
{
    if(++bldc.step >= 6)
    {
        bldc.step = 0;
    }
    switch (bldc.step)
    {
    case 0: //AB
        GAL_LOW;
        GBL_LOW;
        GCL_LOW;

        GAB_LOW;
        GCB_LOW;
        bldc_delay();


        GAL_HIGH;
        GBB_HIGH;
        break;
    case 1: //AC
        GAL_HIGH;
        GBL_LOW;
        GCL_LOW;

        GAB_LOW;
        GBB_LOW;
        bldc_delay();


        GCB_HIGH;
        break;
    case 2: //BC
        GAL_LOW;
        GBL_LOW;
        GCL_LOW;

        GAB_LOW;
        GBB_LOW;

        bldc_delay();
        GBL_HIGH;
        GCB_HIGH;
        break;
    case 3: //BA
        GBL_HIGH;
        GAL_LOW;
        GCL_LOW;

        GBB_LOW;
        GCB_LOW;
        bldc_delay();


        GAB_HIGH;
        break;

    case 4: //CA
        GAL_LOW;
        GBL_LOW;
        GCL_LOW;

        GBB_LOW;
        GCB_LOW;
        bldc_delay();

        GCL_HIGH;
        GAB_HIGH;
        break;
    case 5: //CB
        GCL_HIGH;
        GAL_LOW;
        GBL_LOW;
        GAB_LOW;
        GCB_LOW;
        bldc_delay();

        GBB_HIGH;
        break;
    

    default:
        break;
    }
}


