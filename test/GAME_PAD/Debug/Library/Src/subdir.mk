################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Library/Src/MCP23017.c \
../Library/Src/TLC59116.c 

OBJS += \
./Library/Src/MCP23017.o \
./Library/Src/TLC59116.o 

C_DEPS += \
./Library/Src/MCP23017.d \
./Library/Src/TLC59116.d 


# Each subdirectory must supply rules for building sources it contributes
Library/Src/%.o Library/Src/%.su Library/Src/%.cyclo: ../Library/Src/%.c Library/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I"E:/Pikotech/PROJECT/FIRMWARE/GAME_PAD/test/GAME_PAD/Library/Inc" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/HID/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Library-2f-Src

clean-Library-2f-Src:
	-$(RM) ./Library/Src/MCP23017.cyclo ./Library/Src/MCP23017.d ./Library/Src/MCP23017.o ./Library/Src/MCP23017.su ./Library/Src/TLC59116.cyclo ./Library/Src/TLC59116.d ./Library/Src/TLC59116.o ./Library/Src/TLC59116.su

.PHONY: clean-Library-2f-Src

