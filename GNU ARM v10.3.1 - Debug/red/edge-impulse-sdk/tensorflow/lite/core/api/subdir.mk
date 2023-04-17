################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../red/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.cc \
../red/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.cc \
../red/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.cc \
../red/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.cc 

CC_DEPS += \
./red/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.d \
./red/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.d \
./red/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.d \
./red/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.d 

OBJS += \
./red/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.o \
./red/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.o \
./red/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.o \
./red/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.o 


# Each subdirectory must supply rules for building sources it contributes
red/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.o: ../red/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.cc red/edge-impulse-sdk/tensorflow/lite/core/api/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C++ Compiler'
	arm-none-eabi-g++ -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c++11 '-DEI_PORTING_SILABS=1' '-D__ARM_ARCH_PROFILE=77' '-D__ARM_FEATURE_DSP=1' '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG22C224F512IM40=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\red" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\bma" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\config" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\autogen" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\Device\SiliconLabs\EFR32MG22\Include" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\app\common\util\app_log" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\common\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\CMSIS\Core\Include" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\device_init\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\dmadrv\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\common\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emlib\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\iostream\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\util\third_party\printf" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\util\third_party\printf\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\common\toolchain\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\system\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\sleeptimer\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\spidrv\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\udelay\inc" -Og -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -fno-rtti -fno-exceptions -mcmse -c -fmessage-length=0 -MMD -MP -MF"red/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

red/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.o: ../red/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.cc red/edge-impulse-sdk/tensorflow/lite/core/api/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C++ Compiler'
	arm-none-eabi-g++ -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c++11 '-DEI_PORTING_SILABS=1' '-D__ARM_ARCH_PROFILE=77' '-D__ARM_FEATURE_DSP=1' '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG22C224F512IM40=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\red" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\bma" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\config" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\autogen" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\Device\SiliconLabs\EFR32MG22\Include" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\app\common\util\app_log" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\common\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\CMSIS\Core\Include" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\device_init\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\dmadrv\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\common\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emlib\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\iostream\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\util\third_party\printf" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\util\third_party\printf\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\common\toolchain\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\system\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\sleeptimer\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\spidrv\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\udelay\inc" -Og -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -fno-rtti -fno-exceptions -mcmse -c -fmessage-length=0 -MMD -MP -MF"red/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

red/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.o: ../red/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.cc red/edge-impulse-sdk/tensorflow/lite/core/api/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C++ Compiler'
	arm-none-eabi-g++ -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c++11 '-DEI_PORTING_SILABS=1' '-D__ARM_ARCH_PROFILE=77' '-D__ARM_FEATURE_DSP=1' '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG22C224F512IM40=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\red" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\bma" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\config" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\autogen" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\Device\SiliconLabs\EFR32MG22\Include" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\app\common\util\app_log" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\common\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\CMSIS\Core\Include" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\device_init\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\dmadrv\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\common\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emlib\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\iostream\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\util\third_party\printf" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\util\third_party\printf\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\common\toolchain\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\system\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\sleeptimer\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\spidrv\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\udelay\inc" -Og -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -fno-rtti -fno-exceptions -mcmse -c -fmessage-length=0 -MMD -MP -MF"red/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

red/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.o: ../red/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.cc red/edge-impulse-sdk/tensorflow/lite/core/api/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C++ Compiler'
	arm-none-eabi-g++ -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c++11 '-DEI_PORTING_SILABS=1' '-D__ARM_ARCH_PROFILE=77' '-D__ARM_FEATURE_DSP=1' '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG22C224F512IM40=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\red" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\bma" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\config" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\autogen" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\Device\SiliconLabs\EFR32MG22\Include" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\app\common\util\app_log" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\common\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\CMSIS\Core\Include" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\device_init\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\dmadrv\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\common\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emlib\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\iostream\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\util\third_party\printf" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\util\third_party\printf\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\common\toolchain\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\system\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\sleeptimer\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\emdrv\spidrv\inc" -I"C:\Users\jgaztelu\SimplicityStudio\v5_workspace\BMA400_FIFO\gecko_sdk_4.1.1\platform\service\udelay\inc" -Og -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -fno-rtti -fno-exceptions -mcmse -c -fmessage-length=0 -MMD -MP -MF"red/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


