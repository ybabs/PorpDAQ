#ifndef UTILS_H_
#define UTILS_H_

#include <stdio.h>
#include "stm32f7xx_hal.h"


#define LED_ON()  HAL_GPIO_WritePin(GPIOI, GPIO_PIN_1, GPIO_PIN_SET)


#define LED_OFF()  HAL_GPIO_WritePin(GPIOI, GPIO_PIN_1, GPIO_PIN_RESET)

#define GPIO_TOGGLE() HAL_GPIO_TogglePin(GPIOG, GPIO_PIN_6);

#define SAMPLE_RATE ((float32_t)500000)

/* Only copy half of the FFT and discard the rest */
//#define FFT_BUFFER_LENGTH 2048
//#define FFT_LENGTH 1024
//#define FFT_INVERSE_FLAG        ((uint8_t)0)
//#define FFT_Normal_OUTPUT_FLAG  ((uint8_t)1)

 /* FFT LENGTH/2 * 4  */
//#define UART_TX_BUFFER_SIZE 2068  /*SEQUENCE(4)  +  FFT PROCESS TIME (4) + DATA (4 * 512) + CHECKSUM (4) + TAIL (4)*/
//#define UART_TX_BUFFER_SIZE 2060
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
