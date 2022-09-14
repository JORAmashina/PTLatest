################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../RTT/SEGGER_RTT.c \
../RTT/SEGGER_RTT_printf.c 

S_UPPER_SRCS += \
../RTT/SEGGER_RTT_ASM_ARMv7M.S 

OBJS += \
./RTT/SEGGER_RTT.o \
./RTT/SEGGER_RTT_ASM_ARMv7M.o \
./RTT/SEGGER_RTT_printf.o 

S_UPPER_DEPS += \
./RTT/SEGGER_RTT_ASM_ARMv7M.d 

C_DEPS += \
./RTT/SEGGER_RTT.d \
./RTT/SEGGER_RTT_printf.d 


# Each subdirectory must supply rules for building sources it contributes
RTT/%.o RTT/%.su: ../RTT/%.c RTT/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L431xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/include_h" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/port/inc" -I"C:/kachaemstmgurin/projectfirst/modbus1 microtechnics/rtu/inc" -I"C:/kachaemstmgurin/projectfirst/RTT" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
RTT/%.o: ../RTT/%.S RTT/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-RTT

clean-RTT:
	-$(RM) ./RTT/SEGGER_RTT.d ./RTT/SEGGER_RTT.o ./RTT/SEGGER_RTT.su ./RTT/SEGGER_RTT_ASM_ARMv7M.d ./RTT/SEGGER_RTT_ASM_ARMv7M.o ./RTT/SEGGER_RTT_printf.d ./RTT/SEGGER_RTT_printf.o ./RTT/SEGGER_RTT_printf.su

.PHONY: clean-RTT

