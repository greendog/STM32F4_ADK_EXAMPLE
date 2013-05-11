################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/STM32_USB_HOST_Library/Core/src/usbh_core.c \
../Libraries/STM32_USB_HOST_Library/Core/src/usbh_hcs.c \
../Libraries/STM32_USB_HOST_Library/Core/src/usbh_ioreq.c \
../Libraries/STM32_USB_HOST_Library/Core/src/usbh_stdreq.c 

OBJS += \
./Libraries/STM32_USB_HOST_Library/Core/src/usbh_core.o \
./Libraries/STM32_USB_HOST_Library/Core/src/usbh_hcs.o \
./Libraries/STM32_USB_HOST_Library/Core/src/usbh_ioreq.o \
./Libraries/STM32_USB_HOST_Library/Core/src/usbh_stdreq.o 

C_DEPS += \
./Libraries/STM32_USB_HOST_Library/Core/src/usbh_core.d \
./Libraries/STM32_USB_HOST_Library/Core/src/usbh_hcs.d \
./Libraries/STM32_USB_HOST_Library/Core/src/usbh_ioreq.d \
./Libraries/STM32_USB_HOST_Library/Core/src/usbh_stdreq.d 


# Each subdirectory must supply rules for building sources it contributes
Libraries/STM32_USB_HOST_Library/Core/src/%.o: ../Libraries/STM32_USB_HOST_Library/Core/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Linux GCC C Compiler'
	arm-none-eabi-gcc -DUSE_STM32F4_DISCOVERY -DSTM32F4XX -DUSE_STDPERIPH_DRIVER -DUSE_USB_OTG_FS -DDEBUG -DHSE_VALUE=8000000 -I"/home/dev/arm/stm32/stm32f4/stm32f4-discovery/apps/template/src" -I"/home/dev/arm/stm32/stm32f4/stm32f4-discovery/apps/template/Libraries/CMSIS/Device/ST/STM32F4xx/Include" -I"/home/dev/arm/stm32/stm32f4/stm32f4-discovery/apps/template/Libraries/STM32F4xx_StdPeriph_Driver/inc" -I"/home/dev/arm/stm32/stm32f4/stm32f4-discovery/apps/template/Libraries/CMSIS/Include" -I"/home/dev/arm/stm32/stm32f4/stm32f4-discovery/apps/template/Utilities/STM32_EVAL" -I"/home/dev/arm/stm32/stm32f4/stm32f4-discovery/apps/template/inc" -I"/home/dev/arm/stm32/stm32f4/stm32f4-discovery/apps/template/Libraries/STM32_USB_HOST_Library/Core/inc" -I"/home/dev/arm/stm32/stm32f4/stm32f4-discovery/apps/template/Libraries/STM32_USB_OTG_Driver/inc" -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


