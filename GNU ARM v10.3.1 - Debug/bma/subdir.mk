################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../bma/bma400.c 

OBJS += \
./bma/bma400.o 

C_DEPS += \
./bma/bma400.d 


# Each subdirectory must supply rules for building sources it contributes
bma/bma400.o: ../bma/bma400.c bma/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEI_PORTING_SILABS=1' '-D__ARM_ARCH_PROFILE=77' '-D__ARM_FEATURE_DSP=1' '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG22C224F512IM40=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\red" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\bma" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\config" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\autogen" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\Device\SiliconLabs\EFR32MG22\Include" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\app\common\util\app_log" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\common\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\CMSIS\Core\Include" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\device_init\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\dmadrv\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\common\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emlib\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\iostream\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\util\third_party\printf" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\util\third_party\printf\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\common\toolchain\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\system\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\sleeptimer\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\spidrv\inc" -Og -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse -fno-builtin-printf -fno-builtin-sprintf -c -fmessage-length=0 -MMD -MP -MF"bma/bma400.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

