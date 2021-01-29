#ifndef UTILS_H_
#define UTILS_H_

#include <stdio.h>
#include "stm32h7xx_hal.h"

#define UART_TX_BUFFER_SIZE 2052
#define UART_RX_BUFFER_SIZE 1

#define LED_ON()  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_10, GPIO_PIN_SET)
#define LED_OFF() HAL_GPIO_WritePin(GPIOB, GPIO_PIN_10, GPIO_PIN_RESET)


#endif
