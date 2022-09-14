################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../modbus1\ microtechnics/port/src/mt_port.c \
../modbus1\ microtechnics/port/src/portevent.c \
../modbus1\ microtechnics/port/src/portserial.c \
../modbus1\ microtechnics/port/src/porttimer.c 

OBJS += \
./modbus1\ microtechnics/port/src/mt_port.o \
./modbus1\ microtechnics/port/src/portevent.o \
./modbus1\ microtechnics/port/src/portserial.o \
./modbus1\ microtechnics/port/src/porttimer.o 

C_DEPS += \
./modbus1\ microtechnics/port/src/mt_port.d \
./modbus1\ microtechnics/port/src/portevent.d \
./modbus1\ microtechnics/port/src/portserial.d \
./modbus1\ microtechnics/port/src/porttimer.d 


# Each subdirectory must supply rules for building sources it contributes
modbus1\ microtechnics/port/src/mt_port.o: ../modbus1\ microtechnics/port/src/mt_port.c modbus1\ microtechnics/port/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L431xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/include_h" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/port/inc" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/rtu/inc" -I"C:/kachaemstmgurin/projectfirst/RTT" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"modbus1 microtechnics/port/src/mt_port.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
modbus1\ microtechnics/port/src/portevent.o: ../modbus1\ microtechnics/port/src/portevent.c modbus1\ microtechnics/port/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L431xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/include_h" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/port/inc" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/rtu/inc" -I"C:/kachaemstmgurin/projectfirst/RTT" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"modbus1 microtechnics/port/src/portevent.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
modbus1\ microtechnics/port/src/portserial.o: ../modbus1\ microtechnics/port/src/portserial.c modbus1\ microtechnics/port/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L431xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/include_h" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/port/inc" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/rtu/inc" -I"C:/kachaemstmgurin/projectfirst/RTT" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"modbus1 microtechnics/port/src/portserial.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
modbus1\ microtechnics/port/src/porttimer.o: ../modbus1\ microtechnics/port/src/porttimer.c modbus1\ microtechnics/port/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L431xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/include_h" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/port/inc" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/rtu/inc" -I"C:/kachaemstmgurin/projectfirst/RTT" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"modbus1 microtechnics/port/src/porttimer.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-modbus1-20-microtechnics-2f-port-2f-src

clean-modbus1-20-microtechnics-2f-port-2f-src:
	-$(RM) ./modbus1\ microtechnics/port/src/mt_port.d ./modbus1\ microtechnics/port/src/mt_port.o ./modbus1\ microtechnics/port/src/mt_port.su ./modbus1\ microtechnics/port/src/portevent.d ./modbus1\ microtechnics/port/src/portevent.o ./modbus1\ microtechnics/port/src/portevent.su ./modbus1\ microtechnics/port/src/portserial.d ./modbus1\ microtechnics/port/src/portserial.o ./modbus1\ microtechnics/port/src/portserial.su ./modbus1\ microtechnics/port/src/porttimer.d ./modbus1\ microtechnics/port/src/porttimer.o ./modbus1\ microtechnics/port/src/porttimer.su

.PHONY: clean-modbus1-20-microtechnics-2f-port-2f-src

