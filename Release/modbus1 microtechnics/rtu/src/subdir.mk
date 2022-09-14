################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../modbus1\ microtechnics/rtu/src/mbcrc.c \
../modbus1\ microtechnics/rtu/src/mbrtu.c 

OBJS += \
./modbus1\ microtechnics/rtu/src/mbcrc.o \
./modbus1\ microtechnics/rtu/src/mbrtu.o 

C_DEPS += \
./modbus1\ microtechnics/rtu/src/mbcrc.d \
./modbus1\ microtechnics/rtu/src/mbrtu.d 


# Each subdirectory must supply rules for building sources it contributes
modbus1\ microtechnics/rtu/src/mbcrc.o: ../modbus1\ microtechnics/rtu/src/mbcrc.c modbus1\ microtechnics/rtu/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L431xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/include_h" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/port/inc" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/rtu/inc" -I"C:/kachaemstmgurin/projectfirst/RTT" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"modbus1 microtechnics/rtu/src/mbcrc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
modbus1\ microtechnics/rtu/src/mbrtu.o: ../modbus1\ microtechnics/rtu/src/mbrtu.c modbus1\ microtechnics/rtu/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L431xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/include_h" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/port/inc" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/rtu/inc" -I"C:/kachaemstmgurin/projectfirst/RTT" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"modbus1 microtechnics/rtu/src/mbrtu.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-modbus1-20-microtechnics-2f-rtu-2f-src

clean-modbus1-20-microtechnics-2f-rtu-2f-src:
	-$(RM) ./modbus1\ microtechnics/rtu/src/mbcrc.d ./modbus1\ microtechnics/rtu/src/mbcrc.o ./modbus1\ microtechnics/rtu/src/mbcrc.su ./modbus1\ microtechnics/rtu/src/mbrtu.d ./modbus1\ microtechnics/rtu/src/mbrtu.o ./modbus1\ microtechnics/rtu/src/mbrtu.su

.PHONY: clean-modbus1-20-microtechnics-2f-rtu-2f-src

