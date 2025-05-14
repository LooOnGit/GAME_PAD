################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Driver/Src/MCP27013.c \
../Driver/Src/TLC59116.c 

OBJS += \
./Driver/Src/MCP27013.o \
./Driver/Src/TLC59116.o 

C_DEPS += \
./Driver/Src/MCP27013.d \
./Driver/Src/TLC59116.d 


# Each subdirectory must supply rules for building sources it contributes
Driver/Src/%.o Driver/Src/%.su Driver/Src/%.cyclo: ../Driver/Src/%.c Driver/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/HID/Inc -I"E:/Pikotech/PROJECT/FIRMWARE/GAME_PAD/GAME_PAD/Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Driver-2f-Src

clean-Driver-2f-Src:
	-$(RM) ./Driver/Src/MCP27013.cyclo ./Driver/Src/MCP27013.d ./Driver/Src/MCP27013.o ./Driver/Src/MCP27013.su ./Driver/Src/TLC59116.cyclo ./Driver/Src/TLC59116.d ./Driver/Src/TLC59116.o ./Driver/Src/TLC59116.su

.PHONY: clean-Driver-2f-Src

