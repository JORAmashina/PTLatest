/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <stdio.h>
#include <string.h>
#include "SEGGER_RTT.h"

#include "mb.h"
#include "mbport.h"
#include "mt_port.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

//---------------test modbus
#define REG_INPUT_START 1000
#define REG_INPUT_NREGS 3

//----------static variables

// begin --------------------- configuration chip select
//#define cs_1
//
//#define cs_2

#define cs_3_High GPIOA->BSRR |= GPIO_BSRR_BS11
#define cs_3_Low GPIOA->BSRR |= GPIO_BSRR_BR11

// end --------------------- configuration chip select
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
SPI_HandleTypeDef hspi3;

TIM_HandleTypeDef htim1;
TIM_HandleTypeDef htim2;

UART_HandleTypeDef huart2;

/* USER CODE BEGIN PV */
static USHORT usRegInputStart = REG_INPUT_START;
static USHORT usRegInputBuf[REG_INPUT_NREGS] = {11, 0, 0};
//---------------test modbus


/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_SPI3_Init(void);
static void MX_TIM2_Init(void);
static void MX_USART2_UART_Init(void);
static void MX_TIM1_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
float ICValue = 0;
float Frequency = 0;
float Duty = 0;

uint16_t rdac1[1];
uint16_t rdac2[1];
uint16_t rdac3[1];
uint16_t rdac4[1];

uint16_t rxdata[1];

//Cmd to register digipot
uint16_t cmd_rx[1];
uint16_t nop[1];

//test uart2 completed
//uint8_t rx_buff[2];
//
//void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
//{
//	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_1, GPIO_PIN_SET);
//	HAL_UART_Transmit(&huart2, "OK\r\n", 4, HAL_MAX_DELAY); //(&huart2, rx_buff, 2);
//	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_1, GPIO_PIN_RESET);
//	HAL_UART_Receive_IT(&huart2, rx_buff, sizeof(rx_buff)); // rx 10 simbol
//}

//-------------------modbus

GPIO_TypeDef * DE_Port = GPIOA;

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_SPI3_Init();
  MX_TIM2_Init();
  MX_USART2_UART_Init();
  MX_TIM1_Init();
  /* USER CODE BEGIN 2 */

  //---------------test modbus
  MT_PORT_SetTimerModule(&htim1);
  MT_PORT_SetUartModule(&huart2);

  eMBErrorCode eStatus;
  eStatus = eMBInit(MB_RTU, 0x0A, 0, 9600, MB_PAR_NONE);
  eStatus = eMBEnable();
  if (eStatus != MB_ENOERR)
  {
  //Error handling
  }
  //---------------test modbus

//  HAL_UART_Receive_IT(&huart2, rx_buff, 2); // rx X simbol

  HAL_TIM_IC_Start_IT(&htim2, TIM_CHANNEL_1);   // main channel
  HAL_TIM_IC_Start(&htim2, TIM_CHANNEL_2);   // indirect channel

  rdac1[0] = 0x10FF;  // 0001 0000 0000 0000 loading max value rdac1
  rdac2[0] = 0x11FF;  // 0001 0001 0000 0000 loading max value rdac2
  rdac3[0] = 0x12FF;  // 0001 0010 0000 0000 loading max value rdac3
  rdac4[0] = 0x13FF;  // 0001 0011 0000 0000 loading max value rdac4

  cmd_rx[0] = 0x3000; // Rx rdac - 1
  nop[0] = 0x0000; // __NOP

  	  	  cs_3_Low;
  	  	  HAL_SPI_Transmit(&hspi3,(uint8_t*)rdac1, 1, HAL_MAX_DELAY); // rdac1
  	  	  cs_3_High;

  	  	  cs_3_Low;
  		  HAL_SPI_Transmit(&hspi3,(uint8_t*)rdac2, 1, HAL_MAX_DELAY); // rdac2
  		  cs_3_High;

  		  cs_3_Low;
  		  HAL_SPI_Transmit(&hspi3,(uint8_t*)rdac3, 1, HAL_MAX_DELAY); // rdac3
  		  cs_3_High;

  		  cs_3_Low;
  		  HAL_SPI_Transmit(&hspi3,(uint8_t*)rdac4, 1, HAL_MAX_DELAY); // rdac4
  		  cs_3_High;



  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {

// Components::ConsoleRtt;

//	  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_1, GPIO_PIN_SET);
	  //SEGGER_RTT_printf(0, "SEGGER RTT Sample. Uptime: %.6dms.\r\n",890912);
//	  HAL_Delay(500);
//	  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_1, GPIO_PIN_RESET);
//	  HAL_Delay(500);
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */

//	  	  cs_3_Low;
//		  HAL_SPI_Transmit(&hspi3,(uint8_t*)cmd_rx, 1, 100); // rdac4
//		  cs_3_High;

		  //HAL_Delay(100);

//		  cs_3_Low;
//		  HAL_SPI_Transmit(&hspi3,(uint8_t*)nop, 1, 100);
//		  cs_3_High;
//
//	  	  cs_3_Low;
//	  	  HAL_SPI_Receive(&hspi3, (uint8_t*)rxdata, 1, 100);
//	  	  cs_3_High;
//	  cs_3_Low;
//		  HAL_SPI_TransmitReceive(&hspi3, (uint8_t*)cmd_rx, (uint8_t*)rxdata, 3, HAL_MAX_DELAY);
//		  cs_3_High;
//
//	  	  cs_3_Low;
//		  HAL_SPI_Transmit(&hspi3,(uint8_t*)nop, 1, HAL_MAX_DELAY);
//		  cs_3_High;

	  	  //HAL_Delay(500);
		  //HAL_SPI_Transmit(&hspi3,(uint8_t*)rdac1, 1, 100); // Передача данных по SPI
		  //HAL_SPI_Receive(&hspi3, (uint8_t*)read_data, 1, 100);

//	  	    HAL_SPI_Receive(&hspi3, read_data, 1, 100);
	  		//SEGGER_RTT_printf(0, (uint8_t*)rxdata, sizeof(rxdata));

		  //-------------------test modbus
		  eMBPoll();
		  usRegInputBuf[REG_INPUT_NREGS - 2] =  HAL_GetTick() / 1000;
		  usRegInputBuf[REG_INPUT_NREGS - 1] =  HAL_GetTick();
		  //-------------------test modbus
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI48|RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSI48State = RCC_HSI48_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = 1;
  RCC_OscInitStruct.PLL.PLLN = 10;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV7;
  RCC_OscInitStruct.PLL.PLLQ = RCC_PLLQ_DIV2;
  RCC_OscInitStruct.PLL.PLLR = RCC_PLLR_DIV2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_4) != HAL_OK)
  {
    Error_Handler();
  }
  HAL_RCC_MCOConfig(RCC_MCO1, RCC_MCO1SOURCE_HSI48, RCC_MCODIV_1);
}

/**
  * @brief SPI3 Initialization Function
  * @param None
  * @retval None
  */
static void MX_SPI3_Init(void)
{

  /* USER CODE BEGIN SPI3_Init 0 */

  /* USER CODE END SPI3_Init 0 */

  /* USER CODE BEGIN SPI3_Init 1 */

  /* USER CODE END SPI3_Init 1 */
  /* SPI3 parameter configuration*/
  hspi3.Instance = SPI3;
  hspi3.Init.Mode = SPI_MODE_MASTER;
  hspi3.Init.Direction = SPI_DIRECTION_2LINES;
  hspi3.Init.DataSize = SPI_DATASIZE_16BIT;
  hspi3.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi3.Init.CLKPhase = SPI_PHASE_2EDGE;
  hspi3.Init.NSS = SPI_NSS_SOFT;
  hspi3.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_256;
  hspi3.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi3.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi3.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi3.Init.CRCPolynomial = 7;
  hspi3.Init.CRCLength = SPI_CRC_LENGTH_DATASIZE;
  hspi3.Init.NSSPMode = SPI_NSS_PULSE_DISABLE;
  if (HAL_SPI_Init(&hspi3) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI3_Init 2 */

  /* USER CODE END SPI3_Init 2 */

}

/**
  * @brief TIM1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM1_Init(void)
{

  /* USER CODE BEGIN TIM1_Init 0 */

  /* USER CODE END TIM1_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM1_Init 1 */

  /* USER CODE END TIM1_Init 1 */
  htim1.Instance = TIM1;
  htim1.Init.Prescaler = 79;
  htim1.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim1.Init.Period = 49;
  htim1.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim1.Init.RepetitionCounter = 0;
  htim1.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim1) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim1, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterOutputTrigger2 = TIM_TRGO2_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim1, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM1_Init 2 */

  /* USER CODE END TIM1_Init 2 */

}

/**
  * @brief TIM2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM2_Init(void)
{

  /* USER CODE BEGIN TIM2_Init 0 */

  /* USER CODE END TIM2_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_SlaveConfigTypeDef sSlaveConfig = {0};
  TIM_IC_InitTypeDef sConfigIC = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM2_Init 1 */

  /* USER CODE END TIM2_Init 1 */
  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 0;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 4294967295;
  htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_ENABLE;
  if (HAL_TIM_Base_Init(&htim2) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim2, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_IC_Init(&htim2) != HAL_OK)
  {
    Error_Handler();
  }
  sSlaveConfig.SlaveMode = TIM_SLAVEMODE_RESET;
  sSlaveConfig.InputTrigger = TIM_TS_TI1FP1;
  sSlaveConfig.TriggerPolarity = TIM_INPUTCHANNELPOLARITY_RISING;
  sSlaveConfig.TriggerPrescaler = TIM_ICPSC_DIV1;
  sSlaveConfig.TriggerFilter = 0;
  if (HAL_TIM_SlaveConfigSynchro(&htim2, &sSlaveConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigIC.ICPolarity = TIM_INPUTCHANNELPOLARITY_RISING;
  sConfigIC.ICSelection = TIM_ICSELECTION_DIRECTTI;
  sConfigIC.ICPrescaler = TIM_ICPSC_DIV1;
  sConfigIC.ICFilter = 0;
  if (HAL_TIM_IC_ConfigChannel(&htim2, &sConfigIC, TIM_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigIC.ICPolarity = TIM_INPUTCHANNELPOLARITY_FALLING;
  sConfigIC.ICSelection = TIM_ICSELECTION_INDIRECTTI;
  if (HAL_TIM_IC_ConfigChannel(&htim2, &sConfigIC, TIM_CHANNEL_2) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM2_Init 2 */

  /* USER CODE END TIM2_Init 2 */

}

/**
  * @brief USART2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART2_UART_Init(void)
{

  /* USER CODE BEGIN USART2_Init 0 */

  /* USER CODE END USART2_Init 0 */

  /* USER CODE BEGIN USART2_Init 1 */

  /* USER CODE END USART2_Init 1 */
  huart2.Instance = USART2;
  huart2.Init.BaudRate = 9600;
  huart2.Init.WordLength = UART_WORDLENGTH_8B;
  huart2.Init.StopBits = UART_STOPBITS_1;
  huart2.Init.Parity = UART_PARITY_NONE;
  huart2.Init.Mode = UART_MODE_TX_RX;
  huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart2.Init.OverSampling = UART_OVERSAMPLING_16;
  huart2.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart2.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART2_Init 2 */

  /* USER CODE END USART2_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_1|GPIO_PIN_11, GPIO_PIN_RESET);

  /*Configure GPIO pins : PA1 PA11 */
  GPIO_InitStruct.Pin = GPIO_PIN_1|GPIO_PIN_11;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pin : PA8 */
  GPIO_InitStruct.Pin = GPIO_PIN_8;
  GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
  GPIO_InitStruct.Alternate = GPIO_AF0_MCO;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */

eMBErrorCode eMBRegInputCB(UCHAR * pucRegBuffer, USHORT usAddress, USHORT usNRegs)
{
  eMBErrorCode eStatus = MB_ENOERR;
  int iRegIndex;
  if ((usAddress >= REG_INPUT_START) &&
      (usAddress + usNRegs <= REG_INPUT_START + REG_INPUT_NREGS))
  {
    iRegIndex = (int)(usAddress - usRegInputStart);
    while(usNRegs > 0)
    {
        *pucRegBuffer++ = (unsigned char)(usRegInputBuf[iRegIndex] >> 8);
        *pucRegBuffer++ = (unsigned char)(usRegInputBuf[iRegIndex] & 0xFF);
        iRegIndex++;
        usNRegs--;
    }
  }
  else
  {
    eStatus = MB_ENOREG;
  }
  return eStatus;
}

/*----------------------------------------------------------------------------*/
eMBErrorCode eMBRegHoldingCB(UCHAR * pucRegBuffer, USHORT usAddress, USHORT usNRegs,
                             eMBRegisterMode eMode)
{
  return MB_ENOREG;
}
/*----------------------------------------------------------------------------*/
eMBErrorCode eMBRegCoilsCB(UCHAR * pucRegBuffer, USHORT usAddress, USHORT usNCoils,
                           eMBRegisterMode eMode)
{
  return MB_ENOREG;
}
/*----------------------------------------------------------------------------*/
eMBErrorCode eMBRegDiscreteCB(UCHAR * pucRegBuffer, USHORT usAddress, USHORT usNDiscrete)
{
  return MB_ENOREG;
}

//void HAL_SPI_TxCpltCallback(SPI_HandleTypeDef *hspi)
//{
//  if (hspi->Instance == SPI1)
//  {
//	uint16_t read_data[10] = {0,};
//    HAL_SPI_Receive(&hspi3, read_data, 1, 100);
//	SEGGER_RTT_printf(0, read_data, sizeof(read_data));
//  }
//}

void HAL_TIM_IC_CaptureCallback(TIM_HandleTypeDef *htim)
{
	if (htim->Channel == HAL_TIM_ACTIVE_CHANNEL_1)  // If the interrupt is triggered by channel 1
	{
		// Read the IC value
		ICValue = HAL_TIM_ReadCapturedValue(htim, TIM_CHANNEL_1);

		if (ICValue != 0)
		{
			// calculate the Duty Cycle
			Duty = (HAL_TIM_ReadCapturedValue(htim, TIM_CHANNEL_2) *100)/ICValue;

			Frequency = 80000000/ICValue;

			float gu8_MSG[96] = {0,};
			sprintf(gu8_MSG, "Frequency = %.3f Hz", Frequency);
			SEGGER_RTT_printf(0, gu8_MSG, sizeof(gu8_MSG));
			SEGGER_RTT_printf(0, "\n--------------------\n");
		}
	}
}
/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
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
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
