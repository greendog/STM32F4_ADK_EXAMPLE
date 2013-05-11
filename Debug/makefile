################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include Utilities/STM32_EVAL/subdir.mk
-include Libraries/STM32_USB_OTG_Driver/src/subdir.mk
-include Libraries/STM32_USB_HOST_Library/Core/src/subdir.mk
-include Libraries/STM32F4xx_StdPeriph_Driver/src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
STM32F4_ADK.hex \

SECONDARY_LIST += \
STM32F4_ADK.lst \

SECONDARY_SIZE += \
STM32F4_ADK.siz \


# All Target
all: STM32F4_ADK.elf secondary-outputs

# Tool invocations
STM32F4_ADK.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM Sourcery Linux GCC C Linker'
	arm-none-eabi-gcc -T""/home/dev/arm/stm32/stm32f4/stm32f4-discovery/apps/template/stm32_flash.ld"" -Xlinker --gc-sections -Wl,-Map,STM32F4_ADK.map -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "STM32F4_ADK.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

STM32F4_ADK.hex: STM32F4_ADK.elf
	@echo 'Invoking: ARM Sourcery Linux GNU Create Flash Image'
	arm-none-eabi-objcopy -O ihex STM32F4_ADK.elf  "STM32F4_ADK.hex"
	@echo 'Finished building: $@'
	@echo ' '

STM32F4_ADK.lst: STM32F4_ADK.elf
	@echo 'Invoking: ARM Sourcery Linux GNU Create Listing'
	arm-none-eabi-objdump -h -S STM32F4_ADK.elf > "STM32F4_ADK.lst"
	@echo 'Finished building: $@'
	@echo ' '

STM32F4_ADK.siz: STM32F4_ADK.elf
	@echo 'Invoking: ARM Sourcery Linux GNU Print Size'
	arm-none-eabi-size  --format=berkeley STM32F4_ADK.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(SECONDARY_SIZE)$(OBJS)$(C_DEPS)$(ASM_DEPS)$(SECONDARY_FLASH)$(EXECUTABLES)$(SECONDARY_LIST)$(S_UPPER_DEPS) STM32F4_ADK.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
