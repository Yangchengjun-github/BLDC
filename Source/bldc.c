#include "bldc.h"
#include "string.h"


xbldc_t bldc;


U16_T adc_value[3];
U16_T last_adc_value[3];
void blcdStart(void);
void stepMoter(void);
void __putchar__ (char ch) ;
int fputc(int ch, FILE *f)
{
    UARTTxByte(UART0,ch);	
    return (ch);
}
void bldc_delay(void)
{

}

void ADC_CONFIG(void)
{
    ADC12_Software_Reset();
    ADC12_CLK_CMD(ADC_CLK_CR, ENABLE);                                                  // enable ADC CLK
    ADC12_Configure_Mode(ADC12_12BIT, Continuous_mode, 0, 6, 2, 3);                     // 12BIT ADC; Continuous mode; Conversion priority selection 0; Holding cycles=6 ;ADC_CLK=PCLK/2*2=0.2us; Number of Conversions=1
    ADC12_Configure_VREF_Selecte(ADC12_VREFP_VDD_VREFN_VSS);                        // ADC VREF Positive FVR4.096V,negative VSS
    ADC12_ConversionChannel_Config(CH_A, ADC12_CV_RepeatNum1, ADC12_AVGDIS, 0); // SEQ0 chose ADCIN0, 6 Holding cycles, Average 1 time
    ADC12_ConversionChannel_Config(CH_B, ADC12_CV_RepeatNum1, ADC12_AVGDIS, 1); // SEQ1 chose ADCIN1, 6 Holding cycles , Average 1 time
    ADC12_ConversionChannel_Config(CH_C, ADC12_CV_RepeatNum1, ADC12_AVGDIS, 2); // SEQ1 chose ADCIN1, 6 Holding cycles , Average 1 time
    ADC12_CMD(ENABLE);                                                                  // enable ADC
    ADC12_ready_wait();                                                                 // wait ADC get ready
    ADC12_Control(ADC12_START);                                                         // ADC convert start
    //    ADC12_ConfigInterrupt_CMD(ADC12_CMP0H, ENABLE);
    //    ADC12_ConfigInterrupt_CMD(ADC12_CMP0L, ENABLE);
    //    // ADC12_ConfigInterrupt_CMD(ADC12_CMP1H, ENABLE);
    //    // ADC12_ConfigInterrupt_CMD(ADC12_CMP1L, ENABLE);
    //    ADC0->MR |= (CSP_REGISTER_T)(1UL << 30);
    //    ADC_Int_Enable();
}
void adc_get(void)
{
    static U8_T i = 0, j = 0;


    ADC12_SEQEND_wait(0);
    adc_value[0] = ADC0->DR[0];
    ADC12_SEQEND_wait(1);
    adc_value[1] = ADC0->DR[1];
    ADC12_SEQEND_wait(2);
    adc_value[2] = ADC0->DR[2];


    // if(bldc.xiao == _ING)
    // {
    //     if(bldc.timer_xiao)
    //     {
    //         bldc.timer_xiao--;
    //     }
    //     else
    //     {
    //         bldc.xiao = _OK;
    //     }

    // }
    if(bldc.delay == _ING) 
    {
        if(bldc.timer_delay)
        {
            bldc.timer_delay--;
        }
        else
        {
            bldc.delay = _OK;
        }
    }

    if (bldc.delay == _OK)
    {
        if (bldc.status == close)
        {
            if (++bldc.step >= 6)
            {
                bldc.step = 0;
            }
            stepMoter();
            bldc.xiao = _NO;
            bldc.delay = _NO;
        }

       
    }

    switch (bldc.step)
    {
    case 0: // AB
        if (adc_value[2] < bldc.zero_base)//&& last_adc_value[2] > bldc.zero_base)
        {
            bldc.zero = 1;
        }
        break;
    case 1: // AC
        if (adc_value[1] > bldc.zero_base)//&& last_adc_value[1] < bldc.zero_base)
        {
            bldc.zero = 1;
        }
        break;
    case 2: // BC
        if (adc_value[0] < bldc.zero_base)//&& last_adc_value[0] > bldc.zero_base)
        {
            bldc.zero = 1;
        }

        break;
    case 3: // BA
        if (adc_value[2] > bldc.zero_base)//&& last_adc_value[2] < bldc.zero_base)
        {
            bldc.zero = 1;
        }
        break;
    case 4: // CA
        if (adc_value[1] < bldc.zero_base)//&& last_adc_value[1] > bldc.zero_base)
        {
            bldc.zero = 1;
        }

        break;
    case 5: // CB
        if (adc_value[0] > bldc.zero_base)//&& last_adc_value[0] < bldc.zero_base)
        {
            bldc.zero = 1;
        }
        break;
    }

    if (bldc.delay == _NO)
    {
        bldc.zero = 0;
    }

    if (bldc.zero == 1 )
    {
        bldc.zero = 0;

        bldc.timer_phase_buff[j] = bldc.timer_phase;

        if (++j >= 8)
        {
            j = 0;
        }
        for (bldc.timer_phase = 0, i = 0; i < 8; i++)
        {
            bldc.timer_phase += bldc.timer_phase_buff[i];
        }
        bldc.timer_phase = bldc.timer_phase >> 4;

        bldc.timer_xiao = 0;
        printf("%d\n", bldc.timer_phase);
        bldc.timer_delay = bldc.timer_phase;
        bldc.delay = _ING;
        bldc.timer_stuff = 1000;
        bldc.timer_phase = 0;
        bldc.xiao = _ING;
    }
    

   
    
    



   // printf("%d,%d,%d,%d,%d,%d,%d\n", adc_value[0], adc_value[1], adc_value[2], bldc.wait, bldc.step, bldc.timer_stuff, bldc.timer_phase);
    last_adc_value[0] = adc_value[0];
    last_adc_value[1] = adc_value[1];
    last_adc_value[2] = adc_value[2];
}

void bldcInit(void)
{
    bldc.status = open;
    bldc.xiao = _OK;
    bldc.zero_base = 800;//1638 ;//12V
    // GPIO_Init(GAL_PORT, GAL_PIN, 0);
    // GPIO_Init(GBL_PORT, GBL_PIN, 0);
    // GPIO_Init(GCL_PORT, GCL_PIN, 0);
    GPIO_Init(GAB_PORT, GAB_PIN, 0);
    GPIO_Init(GBB_PORT, GBB_PIN, 0);
    GPIO_Init(GCB_PORT, GCB_PIN, 0);
}

void blcdStart(void)
{
    static U16_T timer;
    if(timer++ > 1)
    {
        timer = 0;
        if (++bldc.step >= 6)
        {
            bldc.step = 0;
        }
        bldc.timer_stuff = 1000;
        stepMoter();
    }
     
}

#define DUTY ( 4800*0.8)
void stepMoter(void)
{
    
    switch (bldc.step)
    {
    case 0: //AB
        // GAL_LOW;
        // GBL_LOW;
        // GCL_LOW;
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, 0, 0, 0, 0);
        GAB_LOW;
        GCB_LOW;
        bldc_delay();
//        ADC12_Compare_statue(NBRCMP0_TypeDef, NBRCMPX_L_TypeDef);
//        ADC12_CompareFunction_set(CH_A , CH_A , center , center ) ;
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, DUTY, 0, 0, 0); // PRDR=2400,CMPA=1200,CMPB=DUTY,CMPC=2400,CMPD=0

        //GAL_HIGH;
        GBB_HIGH;
        break;
    case 1: //AC
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, DUTY, 0, 0, 0);
        //GAL_HIGH;
        // GBL_LOW;
        // GCL_LOW;

        GAB_LOW;
        GBB_LOW;
        bldc_delay();
        

        GCB_HIGH;
        break;
    case 2: //BC
        // GAL_LOW;
        // GBL_LOW;
        // GCL_LOW;
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, 0, 0, 0, 0);

        GAB_LOW;
        GBB_LOW;

        bldc_delay();
        //GBL_HIGH;
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, 0, DUTY, 0, 0);
        GCB_HIGH;
        break;
    case 3: //BA
        // GBL_HIGH;
        // GAL_LOW;
        // GCL_LOW;
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, 0, DUTY, 0, 0);

        GBB_LOW;
        GCB_LOW;
        bldc_delay();


        GAB_HIGH;
        break;

    case 4: //CA
        // GAL_LOW;
        // GBL_LOW;
        // GCL_LOW;
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, 0, 0, 0, 0);

        GBB_LOW;
        GCB_LOW;
        bldc_delay();

        //GCL_HIGH;
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, 0, 0, DUTY, 0);
        GAB_HIGH;
        break;
    case 5: //CB
        // GCL_HIGH;
        // GAL_LOW;
        // GBL_LOW;
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, 0, 0, DUTY, 0);

        GAB_LOW;
        GCB_LOW;
        bldc_delay();

        GBB_HIGH;
        break;
    

    default:
        break;
    }
}


