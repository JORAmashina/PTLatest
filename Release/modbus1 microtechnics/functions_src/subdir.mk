################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../modbus1\ microtechnics/functions_src/mbfunccoils.c \
../modbus1\ microtechnics/functions_src/mbfuncdiag.c \
../modbus1\ microtechnics/functions_src/mbfuncdisc.c \
../modbus1\ microtechnics/functions_src/mbfuncholding.c \
../modbus1\ microtechnics/functions_src/mbfuncinput.c \
../modbus1\ microtechnics/functions_src/mbfuncother.c \
../modbus1\ microtechnics/functions_src/mbutils.c 

OBJS += \
./modbus1\ microtechnics/functions_src/mbfunccoils.o \
./modbus1\ microtechnics/functions_src/mbfuncdiag.o \
./modbus1\ microtechnics/functions_src/mbfuncdisc.o \
./modbus1\ microtechnics/functions_src/mbfuncholding.o \
./modbus1\ microtechnics/functions_src/mbfuncinput.o \
./modbus1\ microtechnics/functions_src/mbfuncother.o \
./modbus1\ microtechnics/functions_src/mbutils.o 

C_DEPS += \
./modbus1\ microtechnics/functions_src/mbfunccoils.d \
./modbus1\ microtechnics/functions_src/mbfuncdiag.d \
./modbus1\ microtechnics/functions_src/mbfuncdisc.d \
./modbus1\ microtechnics/functions_src/mbfuncholding.d \
./modbus1\ microtechnics/functions_src/mbfuncinput.d \
./modbus1\ microtechnics/functions_src/mbfuncother.d \
./modbus1\ microtechnics/functions_src/mbutils.d 


# Each subdirectory must supply rules for building sources it contributes
modbus1\ microtechnics/functions_src/mbfunccoils.o: ../modbus1\ microtechnics/functions_src/mbfunccoils.c modbus1\ microtechnics/functions_src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L431xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/include_h" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/port/inc" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/rtu/inc" -I"C:/kachaemstmgurin/projectfirst/RTT" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"modbus1 microtechnics/functions_src/mbfunccoils.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
modbus1\ microtechnics/functions_src/mbfuncdiag.o: ../modbus1\ microtechnics/functions_src/mbfuncdiag.c modbus1\ microtechnics/functions_src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L431xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/include_h" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/port/inc" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/rtu/inc" -I"C:/kachaemstmgurin/projectfirst/RTT" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"modbus1 microtechnics/functions_src/mbfuncdiag.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
modbus1\ microtechnics/functions_src/mbfuncdisc.o: ../modbus1\ microtechnics/functions_src/mbfuncdisc.c modbus1\ microtechnics/functions_src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L431xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/include_h" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/port/inc" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/rtu/inc" -I"C:/kachaemstmgurin/projectfirst/RTT" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"modbus1 microtechnics/functions_src/mbfuncdisc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
modbus1\ microtechnics/functions_src/mbfuncholding.o: ../modbus1\ microtechnics/functions_src/mbfuncholding.c modbus1\ microtechnics/functions_src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L431xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/include_h" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/port/inc" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/rtu/inc" -I"C:/kachaemstmgurin/projectfirst/RTT" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"modbus1 microtechnics/functions_src/mbfuncholding.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
modbus1\ microtechnics/functions_src/mbfuncinput.o: ../modbus1\ microtechnics/functions_src/mbfuncinput.c modbus1\ microtechnics/functions_src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L431xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/include_h" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/port/inc" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/rtu/inc" -I"C:/kachaemstmgurin/projectfirst/RTT" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"modbus1 microtechnics/functions_src/mbfuncinput.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
modbus1\ microtechnics/functions_src/mbfuncother.o: ../modbus1\ microtechnics/functions_src/mbfuncother.c modbus1\ microtechnics/functions_src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L431xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/include_h" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/port/inc" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/rtu/inc" -I"C:/kachaemstmgurin/projectfirst/RTT" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"modbus1 microtechnics/functions_src/mbfuncother.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
modbus1\ microtechnics/functions_src/mbutils.o: ../modbus1\ microtechnics/functions_src/mbutils.c modbus1\ microtechnics/functions_src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L431xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/include_h" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/port/inc" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/rtu/inc" -I"C:/kachaemstmgurin/projectfirst/RTT" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"modbus1 microtechnics/functions_src/mbutils.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-modbus1-20-microtechnics-2f-functions_src

clean-modbus1-20-microtechnics-2f-functions_src:
	-$(RM) ./modbus1\ microtechnics/functions_src/mbfunccoils.d ./modbus1\ microtechnics/functions_src/mbfunccoils.o ./modbus1\ microtechnics/functions_src/mbfunccoils.su ./modbus1\ microtechnics/functions_src/mbfuncdiag.d ./modbus1\ microtechnics/functions_src/mbfuncdiag.o ./modbus1\ microtechnics/functions_src/mbfuncdiag.su ./modbus1\ microtechnics/functions_src/mbfuncdisc.d ./modbus1\ microtechnics/functions_src/mbfuncdisc.o ./modbus1\ microtechnics/functions_src/mbfuncdisc.su ./modbus1\ microtechnics/functions_src/mbfuncholding.d ./modbus1\ microtechnics/functions_src/mbfuncholding.o ./modbus1\ microtechnics/functions_src/mbfuncholding.su ./modbus1\ microtechnics/functions_src/mbfuncinput.d ./modbus1\ microtechnics/functions_src/mbfuncinput.o ./modbus1\ microtechnics/functions_src/mbfuncinput.su ./modbus1\ microtechnics/functions_src/mbfuncother.d ./modbus1\ microtechnics/functions_src/mbfuncother.o ./modbus1\ microtechnics/functions_src/mbfuncother.su ./modbus1\ microtechnics/functions_src/mbutils.d ./modbus1\ microtechnics/functions_src/mbutils.o ./modbus1\ microtechnics/functions_src/mbutils.su

.PHONY: clean-modbus1-20-microtechnics-2f-functions_src

