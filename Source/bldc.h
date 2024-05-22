#ifndef _BLDC_H
#define _BLDC_H


#include "main.h"

typedef struct 
{
    U8_T step;
}xbldc_t;

#define GAL_PORT GPIOA0
#define GAL_PIN 15

#define GBL_PORT GPIOA0
#define GBL_PIN 14

#define GCL_PORT GPIOB0
#define GCL_PIN 5

#define GAB_PORT GPIOB0
#define GAB_PIN 4

#define GBB_PORT GPIOB0
#define GBB_PIN 1

#define GCB_PORT GPIOB0
#define GCB_PIN 0

#define GAL_HIGH GPIO_Set_Value(GAL_PORT, GAL_PIN, 1)
#define GAL_LOW GPIO_Set_Value(GAL_PORT, GAL_PIN, 0)

#define GBL_HIGH GPIO_Set_Value(GBL_PORT, GBL_PIN, 1)
#define GBL_LOW GPIO_Set_Value(GBL_PORT, GBL_PIN, 0)

#define GCL_HIGH GPIO_Set_Value(GCL_PORT, GCL_PIN, 1)
#define GCL_LOW GPIO_Set_Value(GCL_PORT, GCL_PIN, 0)

#define GAB_HIGH GPIO_Set_Value(GAB_PORT, GAB_PIN, 1)
#define GAB_LOW GPIO_Set_Value(GAB_PORT, GAB_PIN, 0)

#define GBB_HIGH GPIO_Set_Value(GBB_PORT, GBB_PIN, 1)
#define GBB_LOW GPIO_Set_Value(GBB_PORT, GBB_PIN, 0)

#define GCB_HIGH GPIO_Set_Value(GCB_PORT, GCB_PIN, 1)
#define GCB_LOW GPIO_Set_Value(GCB_PORT, GCB_PIN, 0)

void blcdStart(void);
void stepMoter(void);

#endif

