################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/main.c \
../src/stm32f4xx_it.c \
../src/system_stm32f4xx.c \
../src/uart_debug.c \
../src/usb_bsp.c \
../src/usbh_adk_core.c \
../src/usbh_usr.c \
../src/xprintf.c 

OBJS += \
./src/main.o \
./src/stm32f4xx_it.o \
./src/system_stm32f4xx.o \
./src/uart_debug.o \
./src/usb_bsp.o \
./src/usbh_adk_core.o \
./src/usbh_usr.o \
./src/xprintf.o 

C_DEPS += \
./src/main.d \
./src/stm32f4xx_it.d \
./src/system_stm32f4xx.d \
./src/uart_debug.d \
./src/usb_bsp.d \
./src/usbh_adk_core.d \
./src/usbh_usr.d \
./src/xprintf.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Linux GCC C Compiler'
	arm-none-eabi-gcc -DUSE_STM32F4_DISCOVERY -DSTM32F4XX -DUSE_STDPERIPH_DRIVER -DUSE_USB_OTG_FS -DDEBUG -DHSE_VALUE=8000000 -I"/home/dev/arm/stm32/stm32f4/stm32f4-discovery/apps/template/src" -I"/home/dev/arm/stm32/stm32f4/stm32f4-discovery/apps/template/Libraries/CMSIS/Device/ST/STM32F4xx/Include" -I"/home/dev/arm/stm32/stm32f4/stm32f4-discovery/apps/template/Libraries/STM32F4xx_StdPeriph_Driver/inc" -I"/home/dev/arm/stm32/stm32f4/stm32f4-discovery/apps/template/Libraries/CMSIS/Include" -I"/home/dev/arm/stm32/stm32f4/stm32f4-discovery/apps/template/Utilities/STM32_EVAL" -I"/home/dev/arm/stm32/stm32f4/stm32f4-discovery/apps/template/inc" -I"/home/dev/arm/stm32/stm32f4/stm32f4-discovery/apps/template/Libraries/STM32_USB_HOST_Library/Core/inc" -I"/home/dev/arm/stm32/stm32f4/stm32f4-discovery/apps/template/Libraries/STM32_USB_OTG_Driver/inc" -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


