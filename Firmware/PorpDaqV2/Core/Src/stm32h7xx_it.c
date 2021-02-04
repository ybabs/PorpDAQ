
#include "main.h"
#include "stm32h7xx_it.h"

extern DMA_HandleTypeDef hdma_adc3;
extern ADC_HandleTypeDef hadc3;
extern SD_HandleTypeDef hsd1;
extern TIM_HandleTypeDef htim3;
extern DMA_HandleTypeDef hdma_uart8_rx;
extern DMA_HandleTypeDef hdma_uart8_tx;
extern UART_HandleTypeDef huart8;
extern TIM_HandleTypeDef htim6;


/******************************************************************************/
/*           Cortex Processor Interruption and Exception Handlers          */
/******************************************************************************/
/**
  * @brief This function handles Non maskable interrupt.
  */
void NMI_Handler(void)
{

  while (1)
  {
  }

}

/**
  * @brief This function handles Hard fault interrupt.
  */
void HardFault_Handler(void)
{
  while (1)
  {
  }
}

/**
  * @brief This function handles Memory management fault.
  */
void MemManage_Handler(void)
{

  while (1)
  {
  }
}

/**
  * @brief This function handles Pre-fetch fault, memory access fault.
  */
void BusFault_Handler(void)
{

  while (1)
  {
  }
}

/**
  * @brief This function handles Undefined instruction or illegal state.
  */
void UsageFault_Handler(void)
{

  while (1)
  {

  }
}

/**
  * @brief This function handles Debug monitor.
  */
void DebugMon_Handler(void)
{

}

/******************************************************************************/
/* STM32H7xx Peripheral Interrupt Handlers                                    */
/* Add here the Interrupt Handlers for the used peripherals.                  */
/* For the available peripheral interrupt handler names,                      */
/* please refer to the startup file (startup_stm32h7xx.s).                    */
/******************************************************************************/

/**
  * @brief This function handles DMA1 stream0 global interrupt.
  */
void DMA1_Stream0_IRQHandler(void)
{

  HAL_DMA_IRQHandler(&hdma_adc3);

}

/**
  * @brief This function handles DMA1 stream1 global interrupt.
  */
void DMA1_Stream1_IRQHandler(void)
{

  HAL_DMA_IRQHandler(&hdma_uart8_rx);

}

/**
  * @brief This function handles DMA1 stream2 global interrupt.
  */
void DMA1_Stream2_IRQHandler(void)
{

  HAL_DMA_IRQHandler(&hdma_uart8_tx);

}

/**
  * @brief This function handles TIM3 global interrupt.
  */
void TIM3_IRQHandler(void)
{
  HAL_TIM_IRQHandler(&htim3);
}

/**
  * @brief This function handles SDMMC1 global interrupt.
  */
void SDMMC1_IRQHandler(void)
{
  HAL_SD_IRQHandler(&hsd1);
}

/**
  * @brief This function handles TIM6 global interrupt, DAC1_CH1 and DAC1_CH2 underrun error interrupts.
  */
void TIM6_DAC_IRQHandler(void)
{
  HAL_TIM_IRQHandler(&htim6);
}

/**
  * @brief This function handles UART8 global interrupt.
  */
void UART8_IRQHandler(void)
{
  HAL_UART_IRQHandler(&huart8);
}

/**
  * @brief This function handles ADC3 global interrupt.
  */
void ADC3_IRQHandler(void)
{
  HAL_ADC_IRQHandler(&hadc3);
}

