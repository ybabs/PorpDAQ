/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
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
//#define WAV_FILE 1.WAV
/* Includes ------------------------------------------------------------------*/
#include "arm_math.h"
#include "arm_const_structs.h"
#include "utils.h"
#include "time.h"
#include "main.h"
#include "adc.h"
#include "dma.h"
#include "fatfs.h"
#include "sdmmc.h"
#include "tim.h"
#include "usart.h"
#include "gpio.h"
#include "wav.h"
#include "utils.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
//char WAV_FILE[] = {'W','P','x','x','.','w','a','v' };
char WAV_FILE[8] = "0.wav";
FIL wavFile;
uint32_t bytes_written = 0;
uint32_t file_size;
uint8_t wavHeaderBuff[44];
WAV_Format WaveFormat;
uint16_t adc_values[WAV_BUFFER_LENGTH];

float32_t aFFT_Input_f32[FFT_LENGTH*2];
float32_t aFFT_Output_f32 [FFT_LENGTH];

/*To compute HANN Window */
float32_t HANN_FFT_Input[FFT_LENGTH * 2];
float32_t HANN_FFT_Output[FFT_LENGTH * 2];
float32_t hann_coeff;
float32_t adc_offset = 0; /* stores the cumulative sum of the adc signals for a given sample size*/
float32_t adc_dc_average = 0; /* Returns the average of the sums above to give a DC offset*/

int hann_flag = 0;
int fft_flag = 1;

uint8_t uart_tx_buffer[UART_TX_BUFFER_SIZE];
//uint8_t uart_rx_buffer[UART_RX_BUFFER_SIZE];
uint8_t uart_rx_buffer;


/* For calculating the number of cycles required for functions to compute */
uint32_t duration_us = 0x00;
uint32_t nb_cycles  = 0x00;

uint16_t uart_header_num = 0; /* Sequence of the FFT Values transmitted */
/* FFT Bin Index */
uint32_t maxIndex = 0;
float32_t maxValue = 0; 

FATFS FatFSInstance;
UINT BytesWritten;
uint8_t open_result;
uint8_t wav_write_result;

int sd_tx_flag = 0;
int uart_tx_flag = 0;
int uart_ready_flag = 0;
int adc_conv_counter = 0;
int waypoint_index = 0;  // Appended to wav file.


uint16_t sd_buf_write[SD_WRITE_BUF_SIZE];


uint32_t start_ms = 0;
uint32_t ms_record = 5000;  // Value to be returned by OnboardPC
unsigned char record_time[4]; // Received UART Buffer
uint32_t ms_now ;
uint32_t ms_elapsed;

int stop_record = 0;
int mount_sd_flag = 0;


int i = 0;
int j = 0;
int k = 0;

int debug_val = 0;
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
void SD_Write(void);
void SD_Write_Cmd(void);
void SD_Mount(void);
void ADC_Start(void);
void ADC_Stop(void);
void TIMER_Start(void);
void FFT_Compute(int offset);
void HANN_FFT_Compute(void);
void UART_Transmit(void);
void UART_Receive(void);
void UART_Flush(void);
void Set_WAV_File(void);
//void Set_record_time(void);

/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
int main(void)
{
	 SCB_EnableICache();
	
	SCB_EnableDCache();
	
	HAL_Init();
	
	SystemClock_Config();
	
	/* Initialise all configured peripherals */
	MX_GPIO_Init();
	MX_DMA_Init();
	MX_SDMMC1_SD_Init();
	MX_FATFS_Init();
	MX_ADC3_Init();
	MX_TIM1_Init();
	MX_USART6_UART_Init();
	
	// Mount SD Card
	//SD_Mount();
	
	//Start Timer
	TIMER_Start();
	
	// Start millisecond counter
	//start_ms = HAL_GetTick();
	//STart ADC
	//ADC_Start();
	
	UART_Receive();

	
	while(1)
	{
		if(mount_sd_flag == 1)
		{
			SD_Mount();
		}
		
		SD_Write_Cmd();
		//SD_Write();
		
	}
}

/* USER CODE END 0 */
void ADC_Start(void)
{
	if(HAL_ADC_Start_DMA(&hadc3, (uint32_t*)&adc_values, WAV_BUFFER_LENGTH) != HAL_OK)
	{
		Error_Handler();
	}
	
	// LED_ON();
	
}

void ADC_Stop(void)
{
	if(HAL_ADC_Stop_DMA(&hadc3) != HAL_OK)
	{
		Error_Handler();
	}
}

void HAL_ADC_ConvHalfCpltCallback(ADC_HandleTypeDef* hadc)
{
			// Compute half of the data
		 // TimerCount_Start();
		//	FFT_Compute(0);
			//	TimerCount_Stop(nb_cycles);
			//  duration_us = (uint32_t)(((uint64_t)US_IN_SECOND * (nb_cycles)) / SystemCoreClock);

	
}

void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc)
{
	if(hadc->Instance == ADC3)
	{			
		
	//	FFT_Compute((WAV_BUFFER_LENGTH/2)-1);
		  // Set "Write to SD Card Flag"
		 	sd_tx_flag = 1;	
		//GPIO_TOGGLE();
	}
			
}

void HAL_UART_TxCpltCallback(UART_HandleTypeDef *huart)
{
	
	
   if(huart->Instance == USART6)
	 {
		 GPIO_TOGGLE();
		 uart_ready_flag = 1;
	 }
}

void UART_Flush(void)
{
	uart_rx_buffer = 0;
//	for (int i = 0; i < UART_RX_BUFFER_SIZE; i++)
//	{
//		uart_rx_buffer[i] = 0;
//	}
	// clear the recording time buffer.
//		for (int i = 0; i < 4; i++)
//	{
//		record_time[i] = 0;
//	}
}

//void Set_record_time()
//{
//	record_time[3] = uart_rx_buffer[5];
//	record_time[2] = uart_rx_buffer[4];
//	record_time[1] = uart_rx_buffer[3];
//	record_time[0] = uart_rx_buffer[2];
//	
//	// convert value from unsigned char to ms);
//	memcpy((unsigned char*)&ms_record, record_time, sizeof(int));
//}

//TODO Test This with ROS PC.
void UART_Receive(void)
{
	 if(HAL_UART_Receive_DMA(&huart6, &uart_rx_buffer, UART_RX_BUFFER_SIZE) != HAL_OK)
	{
			Error_Handler();
	}
		
}

// set Name of WAVFile
void Set_WAV_File(void)
{
	waypoint_index++;
	//snprintf(WAV_FILE, sizeof(WAV_FILE), "Waypoint%d.wav", waypoint_index);
	snprintf(WAV_FILE, sizeof(WAV_FILE), "%d.wav", waypoint_index);
	
}

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
	 if(huart->Instance == USART6)
	 {
		  
		  // Stop ADC DMA Conversions
		   if(uart_rx_buffer == 0x33)
			 {
				 // Stop ADC DMA Conversion
				 stop_record = 1;
				 //ADC_Stop();	 
				 //Stop UART DMA Transfer
				 //HAL_UART_DMAStop(&huart6);
				 // Turn off LED
				 //LED_OFF();
				 // Flush buffer
				 //UART_Flush();	 
				 
			 }
			 
				 // Start DMA for FFT Conversions // Value 5M
				 if(uart_rx_buffer == 0x35 )
				 {
					 stop_record = 0;
					 Set_WAV_File();
					 mount_sd_flag = 1;
					 //SD_Mount();
					 // Start DMA for normal FFT
					 fft_flag = 1;
					 hann_flag = 0;
					 
					 start_ms = HAL_GetTick();
					 //Start ADC
					 ADC_Start();
					 // Flush the UART buffer
					 //UART_Flush();					 					 
				 }
			 
	 }
}


void UART_Transmit()
{
	 // copy FFT Data
	 memcpy(uart_tx_buffer, &aFFT_Output_f32, FFT_BUFFER_LENGTH);
	
	 // Append Tail of UART Buffer
		uart_tx_buffer[2048] = 's';
		uart_tx_buffer[2049] = 't';
		uart_tx_buffer[2050] = 'o';
		uart_tx_buffer[2051] = 'p';
	
	if(HAL_UART_Transmit_DMA(&huart6, uart_tx_buffer, UART_TX_BUFFER_SIZE) != HAL_OK)
	{
		Error_Handler();
	}
	
}


void TIMER_Start(void)
{
	if (HAL_TIM_Base_Start_IT(&htim1) != HAL_OK)
  {
    Error_Handler();
  }
}

void SD_Mount(void)
{
	mount_sd_flag = 0;
	
	if(f_mount(&FatFSInstance, SDPath, 1) == FR_OK)
	{
		
		// Create SD Card file name and open card for writing
		if(f_open(&wavFile, WAV_FILE, FA_WRITE | FA_CREATE_ALWAYS) == FR_OK)
		{
			debug_val = 2;
			
			// Initialise WAV Header
			InitialiseWavEncoder(AUDIO_FREQ, wavHeaderBuff, &WaveFormat);
			//Write Header File
			wav_write_result = f_write(&wavFile, wavHeaderBuff, 44, (void*)&bytes_written);	
			//return size of file
			file_size = bytes_written;
		}
	}
}

void SD_Write_Cmd(void)
{
		ms_now = HAL_GetTick();
	  ms_elapsed = ms_now - start_ms;
	if(wav_write_result == FR_OK)
	{
		
		 if (sd_tx_flag == 1)
		 {
			 // Set flag to 0	
			 sd_tx_flag = 0;
			  
			 if(f_write(&wavFile, (uint8_t*) adc_values, SD_WRITE_BUF_SIZE * 2, (void*)&bytes_written) == FR_OK)
			 {
				 //debug_val = 1;
				 //LED_ON();
				  // increment the size of the file
				 file_size +=bytes_written;
				 // reset adc counter				
				 adc_conv_counter = 0;
				 // check if we've elapsed time taken to record
				 if(stop_record == 1)
				 {
					 //Stop ADC
					 ADC_Stop();
					 //Update the Wav File
					 if(f_lseek(&wavFile, 0) == FR_OK)
					 {
						 WavHeaderUpdate(wavHeaderBuff, &WaveFormat, file_size);
						 // Save Update to the WAV File
						 if(f_write(&wavFile, wavHeaderBuff, sizeof(WaveFormat), (void*)&bytes_written) == FR_OK)
						 {
							  //close File
								f_close(&wavFile);
							  // TOggle GPIO to indicate file has been successfully written
							  //HAL_GPIO_WritePin(GPIOI, GPIO_PIN_1, GPIO_PIN_SET);
							 LED_ON();
						 }
					 }
				 } 
			 } 			 
		 }
	}
}


void SD_Write(void)
{
	
	ms_now = HAL_GetTick();
	ms_elapsed = ms_now - start_ms;
	
	//TimerCount_Start();	
	if(wav_write_result == FR_OK)
	{
		 if (sd_tx_flag == 1)
		 {
			 // Set flag to 0	
			 sd_tx_flag = 0;
			  
			 if(f_write(&wavFile, (uint8_t*) adc_values, SD_WRITE_BUF_SIZE * 2, (void*)&bytes_written) == FR_OK)
			 {
				  // increment the size of the file
				 file_size +=bytes_written;
				 // reset adc counter				
				 adc_conv_counter = 0;
				 // check if we've elapsed time taken to record
				 if(ms_elapsed > ms_record)
				 {
					 //Stop ADC
					 ADC_Stop();
					 //Update the Wav File
					 if(f_lseek(&wavFile, 0) == FR_OK)
					 {
						 WavHeaderUpdate(wavHeaderBuff, &WaveFormat, file_size);
						 // Save Update to the WAV File
						 if(f_write(&wavFile, wavHeaderBuff, sizeof(WaveFormat), (void*)&bytes_written) == FR_OK)
						 {
							  //close File
								f_close(&wavFile);
							  // TOggle GPIO to indicate file has been successfully written
							  //HAL_GPIO_WritePin(GPIOI, GPIO_PIN_1, GPIO_PIN_SET);
							 LED_ON();
						 }
					 }
				 } 
			 } 			 
		 }
	}
}

void FFT_Compute(int offset)
{
	
	uart_tx_flag = 0;
	fft_flag = 0;
		
	if(offset == 0)
	{
		 k = 0;
		
		for (i = 0; i < FFT_BUFFER_LENGTH; i+=2)
		{
			aFFT_Input_f32 [(uint16_t)i] = adc_values[k] / (float32_t) 4096.0; // Real part of the signal
			aFFT_Input_f32[(uint16_t)i + 1] = 0 ; // COmplex Part of the signal with zero imaginary parts			

       k++;			
		}
		
		arm_cfft_f32( &arm_cfft_sR_f32_len1024, aFFT_Input_f32, FFT_INVERSE_FLAG, FFT_Normal_OUTPUT_FLAG );
		
			arm_cmplx_mag_f32( aFFT_Input_f32, aFFT_Output_f32, FFT_LENGTH);
		
			aFFT_Output_f32[0] = 0;
			/* Looking for the bin that has highest magnitude */
			arm_max_f32( aFFT_Output_f32, FFT_LENGTH, &maxValue, &maxIndex );
			
			//Transmit the Data
	
		  //TimerCount_Start();
			//UART_Transmit();	
			//TimerCount_Stop(nb_cycles);
		 // duration_us = (uint32_t)(((uint64_t)US_IN_SECOND * (nb_cycles)) / SystemCoreClock);
		
	}
	
	
	if(offset== (WAV_BUFFER_LENGTH/2) - 1)
	{
		 k = (WAV_BUFFER_LENGTH/2) - 1;
		
		for (i = 0; i < FFT_BUFFER_LENGTH; i+=2)
		{
			aFFT_Input_f32 [(uint16_t)i] = adc_values[k] / (float32_t) 4096.0; // Real part of the signal
			aFFT_Input_f32[(uint16_t)i + 1] = 0 ; // COmplex Part of the signal with zero imaginary parts			

       k++;			
		}
		
		arm_cfft_f32( &arm_cfft_sR_f32_len1024, aFFT_Input_f32, FFT_INVERSE_FLAG, FFT_Normal_OUTPUT_FLAG );
		
			arm_cmplx_mag_f32( aFFT_Input_f32, aFFT_Output_f32, FFT_LENGTH);
		
			aFFT_Output_f32[0] = 0;
			/* Looking for the bin that has highest magnitude */
			arm_max_f32( aFFT_Output_f32, FFT_LENGTH, &maxValue, &maxIndex );
			
			//Transmit the Data
		// TimerCount_Start();
			//UART_Transmit();	
			//TimerCount_Stop(nb_cycles);
		 // duration_us = (uint32_t)(((uint64_t)US_IN_SECOND * (nb_cycles)) / SystemCoreClock);
		
	}
		
}


/**
  * @brief  The application entry point.
  * @retval int
  */

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInitStruct = {0};

  /** Configure the main internal regulator output voltage 
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = 8;
  RCC_OscInitStruct.PLL.PLLN = 216;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 9;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Activate the Over-Drive mode 
  */
  if (HAL_PWREx_EnableOverDrive() != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_7) != HAL_OK)
  {
    Error_Handler();
  }
  PeriphClkInitStruct.PeriphClockSelection = RCC_PERIPHCLK_USART6|RCC_PERIPHCLK_SDMMC1
                              |RCC_PERIPHCLK_CLK48;
  PeriphClkInitStruct.Usart6ClockSelection = RCC_USART6CLKSOURCE_PCLK2;
  PeriphClkInitStruct.Clk48ClockSelection = RCC_CLK48SOURCE_PLL;
  PeriphClkInitStruct.Sdmmc1ClockSelection = RCC_SDMMC1CLKSOURCE_CLK48;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{ 
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
