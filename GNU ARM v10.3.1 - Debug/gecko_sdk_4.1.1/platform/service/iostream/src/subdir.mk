################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream.c \
../gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream_eusart.c \
../gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream_retarget_stdio.c \
../gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream_stdlib_config.c \
../gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream_uart.c 

OBJS += \
./gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream.o \
./gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream_eusart.o \
./gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream_retarget_stdio.o \
./gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream_stdlib_config.o \
./gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream_uart.o 

C_DEPS += \
./gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream.d \
./gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream_eusart.d \
./gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream_retarget_stdio.d \
./gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream_stdlib_config.d \
./gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream_uart.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream.o: ../gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream.c gecko_sdk_4.1.1/platform/service/iostream/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEI_PORTING_SILABS=1' '-D__ARM_ARCH_PROFILE=77' '-D__ARM_FEATURE_DSP=1' '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG22C224F512IM40=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\red" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\bma" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\config" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\autogen" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\Device\SiliconLabs\EFR32MG22\Include" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\app\common\util\app_log" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\common\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\CMSIS\Core\Include" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\device_init\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\dmadrv\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\common\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emlib\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\iostream\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\util\third_party\printf" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\util\third_party\printf\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\common\toolchain\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\system\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\sleeptimer\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\spidrv\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\udelay\inc" -Og -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse -fno-builtin-printf -fno-builtin-sprintf -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream_eusart.o: ../gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream_eusart.c gecko_sdk_4.1.1/platform/service/iostream/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEI_PORTING_SILABS=1' '-D__ARM_ARCH_PROFILE=77' '-D__ARM_FEATURE_DSP=1' '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG22C224F512IM40=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\red" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\bma" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\config" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\autogen" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\Device\SiliconLabs\EFR32MG22\Include" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\app\common\util\app_log" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\common\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\CMSIS\Core\Include" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\device_init\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\dmadrv\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\common\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emlib\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\iostream\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\util\third_party\printf" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\util\third_party\printf\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\common\toolchain\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\system\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\sleeptimer\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\spidrv\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\udelay\inc" -Og -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse -fno-builtin-printf -fno-builtin-sprintf -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream_eusart.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream_retarget_stdio.o: ../gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream_retarget_stdio.c gecko_sdk_4.1.1/platform/service/iostream/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEI_PORTING_SILABS=1' '-D__ARM_ARCH_PROFILE=77' '-D__ARM_FEATURE_DSP=1' '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG22C224F512IM40=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\red" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\bma" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\config" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\autogen" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\Device\SiliconLabs\EFR32MG22\Include" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\app\common\util\app_log" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\common\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\CMSIS\Core\Include" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\device_init\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\dmadrv\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\common\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emlib\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\iostream\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\util\third_party\printf" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\util\third_party\printf\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\common\toolchain\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\system\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\sleeptimer\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\spidrv\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\udelay\inc" -Og -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse -fno-builtin-printf -fno-builtin-sprintf -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream_retarget_stdio.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream_stdlib_config.o: ../gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream_stdlib_config.c gecko_sdk_4.1.1/platform/service/iostream/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEI_PORTING_SILABS=1' '-D__ARM_ARCH_PROFILE=77' '-D__ARM_FEATURE_DSP=1' '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG22C224F512IM40=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\red" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\bma" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\config" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\autogen" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\Device\SiliconLabs\EFR32MG22\Include" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\app\common\util\app_log" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\common\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\CMSIS\Core\Include" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\device_init\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\dmadrv\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\common\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emlib\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\iostream\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\util\third_party\printf" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\util\third_party\printf\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\common\toolchain\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\system\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\sleeptimer\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\spidrv\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\udelay\inc" -Og -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse -fno-builtin-printf -fno-builtin-sprintf -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream_stdlib_config.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream_uart.o: ../gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream_uart.c gecko_sdk_4.1.1/platform/service/iostream/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEI_PORTING_SILABS=1' '-D__ARM_ARCH_PROFILE=77' '-D__ARM_FEATURE_DSP=1' '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG22C224F512IM40=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\red" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\bma" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\config" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\autogen" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\Device\SiliconLabs\EFR32MG22\Include" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\app\common\util\app_log" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\common\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\CMSIS\Core\Include" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\device_init\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\dmadrv\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\common\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emlib\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\iostream\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\util\third_party\printf" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\util\third_party\printf\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\common\toolchain\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\system\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\sleeptimer\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\spidrv\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\udelay\inc" -Og -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse -fno-builtin-printf -fno-builtin-sprintf -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.1.1/platform/service/iostream/src/sl_iostream_uart.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


