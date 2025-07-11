#ifndef TLC59116_H
#define TLC59116_H

#include "stm32f1xx_hal.h"

#define TLC59116_ADDR (0x60 << 1)
//
void TLC59116_Init(I2C_HandleTypeDef *hi2c);
void TLC59116_LED_ON(I2C_HandleTypeDef *hi2c);
void TLC59116_LED_OFF(I2C_HandleTypeDef *hi2c);
void TLC59116_LED_ALL_ON(I2C_HandleTypeDef *hi2c);
void TLC59116_Set_All_PWM_Mode(I2C_HandleTypeDef *hi2c);
void TLC59116_Set_PWM(I2C_HandleTypeDef *hi2c, uint8_t channel, uint8_t value);

#endif
