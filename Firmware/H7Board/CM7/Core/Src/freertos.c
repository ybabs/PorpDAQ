/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * File Name          : freertos.c
  * Description        : Code for freertos applications
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */
/* USER CODE END Header */


/* Includes ------------------------------------------------------------------*/
#include "FreeRTOS.h"
#include "task.h"
#include "main.h"
#include "cmsis_os.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "fatfs.h"
#include "utils.h"
#include "adc.h"
#include "arm_math.h"
#include "arm_const_structs.h"
#include "gpio.h"
#include "usart.h"
#include "wav.h"
#include "time.h"


#define MAIL_SIZE (uint32_t)6
#define SD_WRITE_BUF_SIZE 16384
#define ADC_BUFFER_LENGTH ((uint32_t) 16384) /* Size of array containing ADC converted values */


#define FFT_BUFFER_LENGTH 2048
#define FFT_SIZE 1024
#define FFT_INVERSE_FLAG        ((uint8_t)0)
#define FFT_Normal_OUTPUT_FLAG  ((uint8_t)1)


int mail_retval; // to return if size of mail is full.

typedef struct
{
	uint16_t data[8192];
}ADC_DATA;

ADC_DATA *prod_data;
uint16_t sd_buff[8192]; // Array to hold data to be written to the SD Card
uint16_t tmp_array[FFT_SIZE];// temporarily calculate FFT of each 1024 points with this array


ALIGN_32BYTES (static uint16_t   adc_values[ADC_BUFFER_LENGTH]);
uint8_t uart_tx_buffer[UART_TX_BUFFER_SIZE];

uint8_t producer_signal = 0x01;  // signal for the producer task //

int waypoint_index = 0 ; // appended to the WAV file
char WAV_FILE[8] ;


#define ADCCONVERTEDVALUES_BUFFER_SIZE ((uint32_t)  500)    /* Size of array containing ADC converted values */
FIL wavFile;
uint32_t bytes_written = 0;
uint32_t file_size;
uint8_t wavHeaderBuff[44];
WAV_Format WaveFormat;
FATFS FatFSInstance;
uint8_t open_result;
uint8_t wav_write_result;

// rFFT variables
float32_t freq_component;
arm_rfft_fast_instance_f32 rfft_instance;
arm_status fft_status;
float32_t fft_input[FFT_SIZE];
float32_t fft_output[FFT_SIZE];
float32_t mag_array[FFT_SIZE];
uint32_t maxIndex = 0;
float32_t maxValue = 0;






osThreadId prodTaskHandle;
osThreadId conTaskHandle;

osMailQId adcDataMailId;
osEvent prodEvent;
osEvent consEvent;
osEvent writeEvent;

void vProducer(void const * argument);
void vConsumer(void const * argument);

void startADC(void);
void mountSDCard(void);
void stopADC(void);
void setFileName(void);
void writeSDCard(void);
void computeFFT(void);
void Error(void);


extern void MX_FATFS_Init(void);
void MX_FREERTOS_Init(void); /* (MISRA C 2004 rule 8.1) */

/* GetIdleTaskMemory prototype (linked to static allocation support) */
void vApplicationGetIdleTaskMemory( StaticTask_t **ppxIdleTaskTCBBuffer, StackType_t **ppxIdleTaskStackBuffer, uint32_t *pulIdleTaskStackSize );

/* USER CODE BEGIN GET_IDLE_TASK_MEMORY */
static StaticTask_t xIdleTaskTCBBuffer;
static StackType_t xIdleStack[configMINIMAL_STACK_SIZE];

void vApplicationGetIdleTaskMemory( StaticTask_t **ppxIdleTaskTCBBuffer, StackType_t **ppxIdleTaskStackBuffer, uint32_t *pulIdleTaskStackSize )
{
  *ppxIdleTaskTCBBuffer = &xIdleTaskTCBBuffer;
  *ppxIdleTaskStackBuffer = &xIdleStack[0];
  *pulIdleTaskStackSize = configMINIMAL_STACK_SIZE;
  /* place for user code */
}
/* USER CODE END GET_IDLE_TASK_MEMORY */

/**
  * @brief  FreeRTOS initialization
  * @param  None
  * @retval None
  */
void MX_FREERTOS_Init(void)
{

	osThreadDef(prod_task, vProducer, osPriorityHigh, 0, 9216 );
	prodTaskHandle = osThreadCreate(osThread(prod_task), NULL);

	osThreadDef(con_task, vConsumer, osPriorityHigh, 0, 10752 );
	conTaskHandle = osThreadCreate(osThread(con_task), NULL);

	osMailQDef(mail, MAIL_SIZE, ADC_DATA);
    adcDataMailId = osMailCreate(osMailQ(mail), NULL);
}

void mountSDCard(void)
{
  if(f_mount(&FatFSInstance, SDPath, 1)==FR_OK)
  {
	  LED1_ON();
	  if(f_open(&wavFile, WAV_FILE, FA_WRITE|FA_CREATE_ALWAYS) == FR_OK)
	  {
		  // Initialise the WAV Header
		  InitialiseWavEncoder(AUDIO_FREQ, wavHeaderBuff, &WaveFormat);
		  // Write header file
		  wav_write_result = f_write(&wavFile, wavHeaderBuff, 44,(void*)&bytes_written);
		  // return size of file
		  file_size = bytes_written;
	  }
  }
}

void setFileName(void)
{
	// use RTC and waypoint index to write file name here
	waypoint_index++;

	//TODO
	// format filename to include HHMMSSDDMMYYWaypoint.WAV
	snprintf(WAV_FILE, sizeof(WAV_FILE), "%d.wav", waypoint_index);
}

void startADC(void)
{
	if(HAL_ADC_Start_DMA(&hadc3, (uint32_t*)&adc_values, ADC_BUFFER_LENGTH) != HAL_OK)
	{
		//Error_Handler();
		Error();
	}
}

void stopADC(void)
{
	if(HAL_ADC_Stop_DMA(&hadc3) != HAL_OK)
	{
		Error_Handler();
	}
}

void vProducer(void const * argument)
{
	for(;;)
	{
		prodEvent = osSignalWait(0x01, osWaitForever);
		if(prodEvent.status == osEventSignal)
		{
			startADC();
			mountSDCard();
			osThreadSuspend(NULL);
		}
	}
}



void Error(void)
{
	LED4_ON();
}

void vConsumer(void const * argument)
{
	ADC_DATA *rx_data;
	for(;;)
	{
		writeEvent = osMailGet(adcDataMailId, osWaitForever);
		if(writeEvent.status == osEventMail)
		{
			LED4_ON();
			// write Data to SD
			 rx_data =  writeEvent.value.p;
			 memcpy(sd_buff, rx_data->data, sizeof(sd_buff));
			 if(wav_write_result == FR_OK)
			 {
				 if( f_write(&wavFile, (uint8_t*)sd_buff, sizeof(sd_buff), (void*)&bytes_written) == FR_OK)
					{
						file_size+=bytes_written;
					}
			 }
		//  computeFFT();
			osMailFree(adcDataMailId, rx_data);
		}
		consEvent = osSignalWait(0x02, 0);
		if(consEvent.status == osEventSignal)
		{
			stopADC();
			if(f_lseek(&wavFile, 0) == FR_OK)
			{
				WavHeaderUpdate(wavHeaderBuff, &WaveFormat, file_size);
				// Update wav File
				if(f_write(&wavFile, wavHeaderBuff, sizeof(WaveFormat), (void*)&bytes_written)==FR_OK)
				{
			  	// close file
				  f_close(&wavFile);
					LED4_OFF();
					osThreadResume(prodTaskHandle);
				}
			}
		}
	}
}

void computeFFT(void)
{
	arm_rfft_fast_init_f32(&rfft_instance, FFT_SIZE);

	for(int j = 0; j < ADC_BUFFER_LENGTH/FFT_SIZE; j++)
	{
		memcpy(tmp_array, &sd_buff[FFT_SIZE *j], sizeof(fft_input));

		for(int i = 0; i < FFT_SIZE; i++)
		{
			fft_input[i] = tmp_array[(uint16_t)i]/ (float32_t) 4096.0;
		}

		arm_rfft_fast_f32(&rfft_instance, fft_input, fft_output, FFT_INVERSE_FLAG);
		arm_cmplx_mag_f32(fft_output+2, mag_array+1, FFT_SIZE/2 -1);

		mag_array[0] = fft_output[0];
		mag_array[FFT_SIZE/2] = fft_output[1];
		mag_array[0] = 0;
		mag_array[FFT_SIZE/2] = 0;
	  arm_max_f32(mag_array, FFT_SIZE, &maxValue, &maxIndex);

		float32_t freq_multiplier = AUDIO_FREQ / FFT_SIZE;
		freq_component = (maxIndex ) * freq_multiplier;
		if(freq_component > 90000 && freq_component < 150000 && maxValue > 1)
		{
				memcpy(uart_tx_buffer, &mag_array, FFT_BUFFER_LENGTH);
				// Append Tail of UART Buffer
				uart_tx_buffer[2048] = 's';
				uart_tx_buffer[2049] = 't';
				uart_tx_buffer[2050] = 'o';
				uart_tx_buffer[2051] = 'p';

				if(HAL_UART_Transmit_DMA(&huart8, uart_tx_buffer, UART_TX_BUFFER_SIZE) != HAL_OK)
				{
					 Error_Handler();
				}
		}
	}
}



/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */

void HAL_ADC_ConvHalfCpltCallback(ADC_HandleTypeDef *AdcHandle)
{

	SCB_InvalidateDCache_by_Addr((uint32_t*)&adc_values[0], ADC_BUFFER_LENGTH);
	 prod_data 	=  osMailAlloc(adcDataMailId, osWaitForever);
	 memcpy(prod_data->data, adc_values, sizeof(adc_values)/2);
	 mail_retval = osMailPut(adcDataMailId, prod_data);
	 if( mail_retval != osOK)
	 {
		  LED2_ON();
	 }



}

void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc)
{


  SCB_InvalidateDCache_by_Addr((uint32_t *) &adc_values[ADC_BUFFER_LENGTH/2], ADC_BUFFER_LENGTH);
  prod_data 	=  osMailAlloc(adcDataMailId, osWaitForever);
  memcpy(prod_data->data, adc_values + ADC_BUFFER_LENGTH/2, sizeof(adc_values)/2);
  mail_retval = osMailPut(adcDataMailId, prod_data);
  if( mail_retval != osOK)
  {
	  LED2_ON();
  }
}

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
	if(huart->Instance == UART8)
	{
		if(uart_rx_buffer == 0x31)
		{
			setFileName();
			osSignalSet(prodTaskHandle, 0x01);
		}
		if(uart_rx_buffer == 0x32)
		{
			osSignalSet(conTaskHandle, 0x02);
		}
	}
}
/* USER CODE END Application */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
