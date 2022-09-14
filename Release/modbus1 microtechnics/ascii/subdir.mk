################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../modbus1\ microtechnics/ascii/mbascii.c 

OBJS += \
./modbus1\ microtechnics/ascii/mbascii.o 

C_DEPS += \
./modbus1\ microtechnics/ascii/mbascii.d 


# Each subdirectory must supply rules for building sources it contributes
modbus1\ microtechnics/ascii/mbascii.o: ../modbus1\ microtechnics/ascii/mbascii.c modbus1\ microtechnics/ascii/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L431xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/include_h" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/port/inc" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/rtu/inc" -I"C:/kachaemstmgurin/projectfirst/RTT" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"modbus1 microtechnics/ascii/mbascii.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-modbus1-20-microtechnics-2f-ascii

clean-modbus1-20-microtechnics-2f-ascii:
	-$(RM) ./modbus1\ microtechnics/ascii/mbascii.d ./modbus1\ microtechnics/ascii/mbascii.o ./modbus1\ microtechnics/ascii/mbascii.su

.PHONY: clean-modbus1-20-microtechnics-2f-ascii

