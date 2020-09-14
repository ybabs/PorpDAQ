#ifndef UTILS_H_
#define UTILS_H_

#include <stdio.h>
#include "stm32f7xx_hal.h"


#define LED_ON()  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_10, GPIO_PIN_SET)

#define LED_OFF()  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_10, GPIO_PIN_RESET)

#define GPIO_TOGGLE() HAL_GPIO_TogglePin(GPIOG, GPIO_PIN_6);

#define UART_TX_BUFFER_SIZE 2052
#define UART_RX_BUFFER_SIZE 1 // START/STOP (1) TYPE (1) LENGTH (4)
/* defines number of us per second */
#define US_IN_SECOND  					((uint32_t)1000000)

#define TimerCount_Start()	do{\
							SysTick->LOAD  =  0xFFFFFF  ;	/* set reload register */\
							SysTick->VAL  =  0  ;			/* Clear Counter */		 \
							SysTick->CTRL  =  0x5 ;			/* Enable Counting*/	 \
							}while(0)

/* Systick Stop and retrieve CPU Clocks count */
#define TimerCount_Stop(Value) 	do {\
								SysTick->CTRL  =0;	/* Disable Counting */				 \
								Value = SysTick->VAL;/* Load the SysTick Counter Value */\
								Value = 0xFFFFFF - Value;/* Capture Counts in CPU Cycles*/\
								}while(0)


#endif /* UTILS_H_*/
