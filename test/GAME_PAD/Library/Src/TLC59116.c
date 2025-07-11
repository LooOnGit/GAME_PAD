#include "TLC59116.h"

void TLC59116_Init(I2C_HandleTypeDef *hi2c) {
    uint8_t mode1 = 0x00; // Normal mode
    uint8_t mode2 = 0x00; // Totem pole, outputs change on stop
    HAL_I2C_Mem_Write(hi2c, TLC59116_ADDR, 0x00, I2C_MEMADD_SIZE_8BIT, &mode1, 1, HAL_MAX_DELAY);
    HAL_I2C_Mem_Write(hi2c, TLC59116_ADDR, 0x01, I2C_MEMADD_SIZE_8BIT, &mode2, 1, HAL_MAX_DELAY);
}

void TLC59116_LED_ON(I2C_HandleTypeDef *hi2c) {
    uint8_t ledout0 = 0xFF;
    HAL_I2C_Mem_Write(hi2c, TLC59116_ADDR, 0x14, I2C_MEMADD_SIZE_8BIT, &ledout0, 1, HAL_MAX_DELAY);
}

void TLC59116_LED_OFF(I2C_HandleTypeDef *hi2c) {
    uint8_t ledout0 = 0x00; // OUT0 = OFF (00)
    HAL_I2C_Mem_Write(hi2c, TLC59116_ADDR, 0x14, I2C_MEMADD_SIZE_8BIT, &ledout0, 1, HAL_MAX_DELAY);
}

void TLC59116_LED_ALL_ON(I2C_HandleTypeDef *hi2c) {

    uint8_t ledout[4] = {
        0x55,
        0x55,
        0x55,
        0x55
    };
    HAL_I2C_Mem_Write(hi2c, TLC59116_ADDR, 0x14, I2C_MEMADD_SIZE_8BIT, ledout, 4, HAL_MAX_DELAY);
    HAL_I2C_Mem_Write(hi2c, TLC59116_ADDR, 0x15, I2C_MEMADD_SIZE_8BIT, ledout, 4, HAL_MAX_DELAY);
    HAL_I2C_Mem_Write(hi2c, TLC59116_ADDR, 0x16, I2C_MEMADD_SIZE_8BIT, ledout, 4, HAL_MAX_DELAY);
    HAL_I2C_Mem_Write(hi2c, TLC59116_ADDR, 0x17, I2C_MEMADD_SIZE_8BIT, ledout, 4, HAL_MAX_DELAY);
}

void TLC59116_Set_All_PWM_Mode(I2C_HandleTypeDef *hi2c) {
    uint8_t ledout[4] = {0xAA, 0xAA, 0xAA, 0xAA};
    HAL_I2C_Mem_Write(hi2c, TLC59116_ADDR, 0x14, I2C_MEMADD_SIZE_8BIT, ledout, 4, HAL_MAX_DELAY);
    HAL_I2C_Mem_Write(hi2c, TLC59116_ADDR, 0x15, I2C_MEMADD_SIZE_8BIT, ledout, 4, HAL_MAX_DELAY);
    HAL_I2C_Mem_Write(hi2c, TLC59116_ADDR, 0x16, I2C_MEMADD_SIZE_8BIT, ledout, 4, HAL_MAX_DELAY);
    HAL_I2C_Mem_Write(hi2c, TLC59116_ADDR, 0x17, I2C_MEMADD_SIZE_8BIT, ledout, 4, HAL_MAX_DELAY);
}

void TLC59116_Set_PWM(I2C_HandleTypeDef *hi2c, uint8_t channel, uint8_t value) {
    if (channel > 15) return;
    uint8_t reg = 0x02 + channel;
    HAL_I2C_Mem_Write(hi2c, TLC59116_ADDR, reg, I2C_MEMADD_SIZE_8BIT, &value, 1, HAL_MAX_DELAY);
}
