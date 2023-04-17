####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 14                                              #
####################################################################

BASE_SDK_PATH = C:/Users/jgaztelu/SimplicityStudio/SDKs/gecko_sdk_2
UNAME:=$(shell $(POSIX_TOOL_PATH)uname -s | $(POSIX_TOOL_PATH)sed -e 's/^\(CYGWIN\).*/\1/' | $(POSIX_TOOL_PATH)sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= gecko_sdk_4.1.1

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DDEBUG_EFM=1' \
 '-DEFR32MG22C224F512IM40=1' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1'

ASM_DEFS += \
 '-DDEBUG_EFM=1' \
 '-DEFR32MG22C224F512IM40=1' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1'

INCLUDES += \
 -Iconfig \
 -Iautogen \
 -I. \
 -I$(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32MG22/Include \
 -I$(COPIED_SDK_PATH)/app/common/util/app_log \
 -I$(COPIED_SDK_PATH)/platform/common/inc \
 -I$(COPIED_SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(COPIED_SDK_PATH)/platform/service/device_init/inc \
 -I$(COPIED_SDK_PATH)/platform/emdrv/dmadrv/inc \
 -I$(COPIED_SDK_PATH)/platform/emdrv/common/inc \
 -I$(COPIED_SDK_PATH)/platform/emlib/inc \
 -I$(COPIED_SDK_PATH)/platform/emdrv/gpiointerrupt/inc \
 -I$(COPIED_SDK_PATH)/platform/service/iostream/inc \
 -I$(COPIED_SDK_PATH)/util/third_party/printf \
 -I$(COPIED_SDK_PATH)/util/third_party/printf/inc \
 -I$(COPIED_SDK_PATH)/platform/common/toolchain/inc \
 -I$(COPIED_SDK_PATH)/platform/service/system/inc \
 -I$(COPIED_SDK_PATH)/platform/service/sleeptimer/inc \
 -I$(COPIED_SDK_PATH)/platform/emdrv/spidrv/inc \
 -I$(COPIED_SDK_PATH)/platform/service/udelay/inc

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lstdc++ \
 -lgcc \
 -lc \
 -lm \
 -lnosys

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -std=c99 \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 -mcmse \
 -fno-builtin-printf \
 -fno-builtin-sprintf \
 --specs=nano.specs \
 -g

CXX_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -std=c++11 \
 -fno-rtti \
 -fno-exceptions \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 -mcmse \
 -fno-builtin-printf \
 -fno-builtin-sprintf \
 --specs=nano.specs \
 -g

ASM_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -imacros sl_gcc_preinclude.h \
 -x assembler-with-cpp

LD_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -T"autogen/linkerfile.ld" \
 --specs=nano.specs \
 -Xlinker -Map=$(OUTPUT_DIR)/$(PROJECTNAME).map \
 -Wl,--gc-sections


####################################################################
# Pre/Post Build Rules                                             #
####################################################################
pre-build:
	# No pre-build defined

post-build: $(OUTPUT_DIR)/$(PROJECTNAME).out
	# No post-build defined

####################################################################
# SDK Build Rules                                                  #
####################################################################
$(OUTPUT_DIR)/sdk/app/common/util/app_log/app_log.o: $(COPIED_SDK_PATH)/app/common/util/app_log/app_log.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/app/common/util/app_log/app_log.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/app/common/util/app_log/app_log.c
CDEPS += $(OUTPUT_DIR)/sdk/app/common/util/app_log/app_log.d
OBJS += $(OUTPUT_DIR)/sdk/app/common/util/app_log/app_log.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o: $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o: $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o: $(COPIED_SDK_PATH)/platform/common/toolchain/src/sl_memory.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/toolchain/src/sl_memory.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/toolchain/src/sl_memory.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG22/Source/startup_efr32mg22.o: $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32MG22/Source/startup_efr32mg22.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32MG22/Source/startup_efr32mg22.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32MG22/Source/startup_efr32mg22.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG22/Source/startup_efr32mg22.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG22/Source/startup_efr32mg22.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG22/Source/system_efr32mg22.o: $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32MG22/Source/system_efr32mg22.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32MG22/Source/system_efr32mg22.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32MG22/Source/system_efr32mg22.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG22/Source/system_efr32mg22.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG22/Source/system_efr32mg22.o

$(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o: $(COPIED_SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o

$(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o: $(COPIED_SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o

$(OUTPUT_DIR)/sdk/platform/emdrv/spidrv/src/spidrv.o: $(COPIED_SDK_PATH)/platform/emdrv/spidrv/src/spidrv.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emdrv/spidrv/src/spidrv.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emdrv/spidrv/src/spidrv.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/spidrv/src/spidrv.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/spidrv/src/spidrv.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_burtc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_burtc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_burtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_cmu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_cmu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_cmu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_core.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_core.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_core.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_emu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_emu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_emu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_eusart.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_eusart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_eusart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_eusart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_eusart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_eusart.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_ldma.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_ldma.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_ldma.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_msc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_msc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_msc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_rtcc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_rtcc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_system.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_system.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_system.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_usart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_usart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s2.o: $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s2.o: $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o: $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_eusart.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_eusart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_eusart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_eusart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_eusart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_eusart.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdlib_config.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_stdlib_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_stdlib_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_stdlib_config.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdlib_config.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdlib_config.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o: $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o: $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.o: $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o: $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o: $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o: $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o: $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o: $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(ASMFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
ASMDEPS_S += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o: $(COPIED_SDK_PATH)/util/third_party/printf/printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/printf/printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/printf/printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o: $(COPIED_SDK_PATH)/util/third_party/printf/src/iostream_printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/printf/src/iostream_printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/printf/src/iostream_printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o

$(OUTPUT_DIR)/project/app.o: app.cpp
	@$(POSIX_TOOL_PATH)echo 'Building app.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ app.cpp
CXXDEPS += $(OUTPUT_DIR)/project/app.d
OBJS += $(OUTPUT_DIR)/project/app.o

$(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.o: autogen/sl_device_init_clocks.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_device_init_clocks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_device_init_clocks.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.o

$(OUTPUT_DIR)/project/autogen/sl_event_handler.o: autogen/sl_event_handler.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_event_handler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_event_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o: autogen/sl_iostream_handles.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_iostream_handles.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_handles.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_init_eusart_instances.o: autogen/sl_iostream_init_eusart_instances.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_iostream_init_eusart_instances.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_init_eusart_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_eusart_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_eusart_instances.o

$(OUTPUT_DIR)/project/autogen/sl_spidrv_init.o: autogen/sl_spidrv_init.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_spidrv_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_spidrv_init.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_spidrv_init.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_spidrv_init.o

$(OUTPUT_DIR)/project/main.o: main.cpp
	@$(POSIX_TOOL_PATH)echo 'Building main.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ main.cpp
CXXDEPS += $(OUTPUT_DIR)/project/main.d
OBJS += $(OUTPUT_DIR)/project/main.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=eJzlXXtv5DaS/ypGI3/sXqYl2zOTnTXsDBKPJ/BiHBvT9mUX6UCQJXZbGb2gh+1JkO9+lERSL1IiJVKS924PSawmq35VLD5E1ePP1c3n639dnN8am+u7z+cXm9XJ6vT9s+cePIIodgL/bLs60g63qwPgW4Ht+Hv44O724/rddvX++2209U/DKPgdWMkB7OTHJ8+xA1s8JEl4outPT0/a02stiPb68eHhkf7vq08b6wF45trx48T0LQAJwx4ncf70U2CZScHTT133oEIldlzzPtaswNPjWN8kqe0EGrCCKKMAEYQgSr5uLPhv2Bkh2q5ygAcHp7vAtUF04Jte9rMV+DtnT37NfndcgH+NXcMDXhB9NYp22gPkkEaZVFmzE/38RL+LoXL03/fmHwlwU33jeKHrWA5EkAPTH98aT0H0JQ5NC+g/Xv3w5vDQ+Hj58VovSOo0HjoTjg0eHQsYju8khm3ZllpgHdzYEOPQsaNHI43NKDE2N5fG+c2dWpg9HBlQbc/MeqlD1mLA1pkTxEkETM8AhRDn11dqVdbNkAHUDEPDDfYKkbU58E0F4KXTzYQ6MxbAwiYVgmoyYAABnuvcG9nqCIW4T1WOXgerjuXCBSBMHA9EihcJGh8M61QvtgX6JmGmSbAHPmuX+Hx7YZwHXhj4wE9iqfARZ73Ngq1QC7cz4A5qwtmkBBGLEd98tdzA+gK3cDXA6JzYyMBjJsSD6dsuiFRpq8WEF48iJbWYcOxORWs1Js7gI4BKkaJofDhQ5daHj7bqVdZmx4sRnQDKvqr1yOQ6GPEkyqVx7T0FZz1VKbTBggOLYn3R+DBQuY7/BUTZE821FaBp0Geg0KyIvNPA/1SAo8WB78SxB9aXwIjtL8Yb7Ug7qp08ag1D10x2QeRVWrTafMi3w1qLVpuNA+UK/E/wxbrRsNX04uPn18dXPx0ftxq2qQZp1OKMW1Zt9GucAPgusoteH3v742OpM6ahSx2rTC/0oldE14lsegFdpyHTe8VJ4EKRhouUhwatLVDDOpkDfOlbbmpzjDDhZx0fv9m9PTp2vDeHUtehYWpBAuhMfL2DTXoapuSVVZJEGJeIJF76bIXLFIZAE5DnPo1Mb5HiEGRi0iTWUqUpkAlIY3npImVBuEQkib6GSWBayxybGjoBqbJ730UKhIGJyAI5+LtgmeKU2EQk8kzYM7YiBw6u3LsLaYK1IIrIF7ruMqVCwARkAQtd6YDwSle8Ci9TGAJNQJ5dHFnLXBUIMgFp9iF801ykNASZkDTOMocGAxOUxQiDhU6dGjoBqR52S509BJmQNM9LFeZZVBbneJnrAMIlIom50FMoBiYii2VaD2CZ0hBoAvK48IS3SGkwMEFZnu/NZZ6kq+AGyARP4TvHX+glFQ2kiIwg/7S/TNFKbCISLXZXdQfsqu5Sd1VXfFf14mVuRQiXgCShvcxbUYRLRJJomcsawiUmiRE7e990FytRFZ+AZFGy0KtRDExAlnihdzmx8F1O/DW2dnJ9xKQJQ6AJyLPcc8CQU0C63GNAOuQcsNyLwyH3hk+2ZO9KWcJgYP2yeMhbckliVDH1O1s0PTSWIwgNGrevBfUx5SHtUTPGxfMCv9v/x/Etit9P3Y3MTALPmWgHLzDrEJZe49xUX8t11k8nOtLWEWK+ffjMGAKZaAFs6JBw7sNY9JsDY8m5D2PsOvEsaiSMexEmZpJOdIRvQCSc9b7Fo7UOxBHHOlBY0iQ+bUgyCEuvceazjxkgEsbiuk+CwLUeTKe5VHMNEitycVIdEAmwNkoMrQFj7Hr92xIzRjMCe2fidasUGM29FhTKfk8fpwXA5sO7tywjjIBTHHLmxd3GwmVng45R51eby033Keo8j0HuNmm2y2xN0ZYXO3EeYuXIDkpiajmXUM+EIEfYNoweAyk6oIDxmWFXUPSgTv7InPQT8DzRmYICuQ6BS8v7qe7TmBresy7O6miziFDLe/16PrRVBD1ovTA1zMh7fDcb2hoCdQsaFKU/MKQSS9m3svFt1pTgzEn0jKTVK/zxLkKH1L8TNtMjLEoQtntsTyD9oqRg+iZ2CeE/TnVNwSkFBjTsEMx33G/l6ognCjui6QAd/xmYhE1yabKUkAYY5pIEwYCGbjLtPQCFzMp5hcXUptUZ5ooVVkXRP96NzCrLgF4BIyBBBBIz2oPEiJMsxdIyJGmDEpAI9ilSlBQBuYsQqIVJQJ50ORaWMuxL5kUPmYmTbu5EZLSzV1GIrweLgN4ZJsE5e5YhSAuT6OxZhhgp72g4C4JPwSLtIFF8O5VzjEDfYaXn4ujVV8GYfBqow+g3VNQhjAILxLFhWllCxAVI0AakctGvqm1Sa0ey469qdRhDR29+CdqA5E1akmNN0sQl9Ca2esK3/KxXRcIx+GW2uQfTLTwMFyNCDZKwLNB+sij/ZUlTghKWp0hasCxxCCaO80C968QLTFMQGhylm0M5L+cSnDiGVJEIjdvM0JtQpG0HqQ1c86ucraCgNe00LXjiKVoi6F9iirb5R5zvvPwr2WZu4A0wKicl0tSkVo1ERpOxRKDu8xnw7Oix5+NZngFawgQoCE1j/blcKHl1bkIlc2VGg1hMYjE1+TJ7KZlLW/moLrdDFAOsYCofm0IvFVdCwluaWrIMA46fgChKw97PyRzTokZvytlRY5xPkhYUZXOlzmlC06gLnVlIC4q8N8k8laiMo0NOaErbKDgWmy9hrm67LVhMaAZIvnynJcxVbrOuc9+9zfY6LQNvyre8HHE+/lW+nR7LsGGWb256eIhrL7ggAnOgQ2z74IFZdAf4dDfld+A6PuY33ybEPJXR9AAx2z54eR6P6eFhtn3wsrj76dEhrn3gprt5rKFj3S424RV30jMALBn3QZxr+jJmL5cXTl80H9mYJjo3ZGLlrxQeO0dsa895cCZKQVzDh9ny7NczoKP7Q1LA5U775mQvCHWMFeZ9UKeMiKzB5AyIzE12Ih/lxkShuiG3j2bTRWvWh5kvWDPbDExvl/pzLDYVzn0gJw1ZqYHsCFOhnsPnGOqIfhFEOYdPj47hI844h8+Aj+lrRYc438rd4s/14jA9TlbqVeqLw/TwWHkHaS8O06NjpAmjgJvPEOvMud5xZthcGGmjKO84k2VYqgFk509ivIbNAhEx5nsNmx4hY/HmuctsP2jUlQzDrrpNPHlb0sRx+27JUVHVvptk1Ezpmy7kgb8wZchxvVe9wrvn4zpuqdIQ+lByuf/NCbTOXtrdfJ89t4yxmeDiwYlsI4TzqekU0qxqFjl+spPw9Yf4JxcUldp2PgIVEfWCZ36dQ8Gh7ItQk5dKA2TJnK2dFBzcMlfEmXHkOgaLgnAOPbNUO2A2twoS1hddzco2K2kCEoo6jZ9nOr5khiVJKscMj8wBRPQIryI+JY3MzOcaM/0AdmbqJpCta94Dt/bkPjAj+zw/Ajv3jgtZFicCLXZg41jLf9f8wAcnhxr8H+ySWUazh2elmhl5Wp6DTsuT0FFL3cHuJLlKB9c41rJmmmODnCzpo+39VLPs5OToUHsNTfb48Pjo8N3xG0gXWnEXRfuLFiemBf+ZhiA6ye1dM46+e/Puu38cv/3uH9Xal7iMENTh96d69S9swzU9509P4SQJfgdWkv+1erXaXF7dfLo8v7z9j7G5vftweW1cXX+4+3SxWZ2sfv1zu4qAFzwCe7s62ZluDF5tV/ep4yaOf/Gcp2eI4S+//lY+LiorkqdeYKcugH9tV6eI88nVVf7w4Nlz/fgEPT3bbrerhyQJT3T96ekJKwTqRo9j/aZopIHs7iVreYDY5d2SKC0eOnb+d2ppBV8tBkkaauf5oQDRuIEL8Y+ws61VLFTbW1ZOIbS9Gsnvt1BPuTLzrDrZzVQMTStJQFTw1v4n+6eO2hH1YiG/365K3UA1ZHT/evVfotf/Go1mczCbKfjIWAmge0V+KxzjqD/lr0j5vaBhg/uU3p+WAYCjHci/H1CbNeIXjfPrK1ZTlImL8WvFS53VoihmXPDZ3Fwa5zd39LZFw/KnxVhrap0XoF6uleI6yp9vL4xsF4H7nZ/EaAAYxZ4rvxQ5JYtehmUmJnolqjeh5H+xmm3AY0aiKAEf9f3c4kCrId/Tgk2DWT9dqH0P/Y6GjbrjjB8r3Rc0IW6Bl13zgJc8JfDR+RU5tr5qVQznuWkZ0EuMV/0agtJRLPPcIAIoQ9mgvpUPc6L9q/nGBPvWsn8J9q0nkevqPKyGtEyKpJCzRKKknLJcmkmvDQ0rLiyTYrW8r0S6OI2YTJJlpVuZVFtlZmUSR9VeJZIE0k2g/M4skSgpQCqRJikDKpWmIx9mpR6mRLqkKqVUms+ySaIijTIpmtLXkrJgoUSi+Pu9ZJK4dJ8CstWqeTLJl5XrZFJVYP+ufPtHfhISKaKyZjIpRrKHvFHeSyJl7C4hkWQsfQ8tXSYkElUxiVIVs0jFAQKXIpJHsvrdQg7lasGh0dRoVX8GEy3e/PU4gQOThhWi9Pd3MaJNoD00WfVkBPqQOj78fUo3Y/4+uBoPfw9S1kWgCymzwtGnVcCEvw+pKMLRhaNAwhAqZXmI4b0rNTGEiLQqiXT1Zsew9/eiZgTg7lZPlNDfjSOYWpQINQy9nwg1npe7Wz3MubsbNfiCuwvXPQwtgoK7PQ794e/Qf/7oiIzh78a1BFI99rk7cFxHMJzaBbsMUQDPyz3VA5u7A8dhv8NBmbtbJR6Fvw/HuZnh9ivSBbnhcncRH3/O63R6+Dx3DxTRzt8exZhzdwCCDMowbO4uODCauwMOVebugKKHudvjeF7uDmV8LXcXLj0Jl/GQQIznDlysnoUESrimhCip7tIMEqiVxREkEMMFCnhIdeXpHtOfc68TT1U9ilo6HBIlb7MQFUpdhDH9OVfIAZUBRpFr5eUfRS0VkLAvueQgGs0sj4JEqHlwx9Ko5zqVQq1MBCuFHM++J5QMlYtQV+LpwQTaeZ8FSNFTmA8m0M4gzkOKleNRoG8rl+fQvo10mhQygrERAhTKuATxTmKcGLErr6ou+ovx7iKefpv8z5fq4bUYfdpFMALUJuyxj1+sQkv/RM2KiAeylUWPLUbXqYX7z6bl36ixETcfrrLAiNP3UBXb7QF6hz/bro6ymBP4BPhWYEP7gI/ubj+u321X7yHbjC9kjPjCZjhEkNdFOSMNe4cArkYbC/47D7QqqK0IA9gI/j+KkSu5FEPcaodbO3C4t5VQzZarOPwVmguIzATYZ0jt2cPc0Th7kttgoWAeBh1e8LJZ9bitS2XXig+QLUy3u79Ubu04CJVGUA9xkMupGY4glXpH3Id0S6aFaAxlUkY31h+jD2M3ZvIA/5QV/YfXnxJFJQoNPTlQt6QyndxHLapoE+VbVdvxGvA3siGW49YeTF7zoMZ1yGZCjwyRzaUVPKKWgQIJaNErynmolKMdA6OWFS2cZ2KOCmRsRAopI69KhEZg2VDa024+ZJ2eZffpeQkftQM1bi2YO1GjG77PYbRn9Co8qDr7MHpWnK44ujOIEG8tbhIsNPmLsCAV+oyj+Itt20cvYspxbqgnOhyw8Y5p9Pkqhp/mRKdGABonMQkYa4bg4COfRBmjz3S/lKvBXm9PCYbQCmtTLAJmIxc6iZ9Tjp5wkioAidVTjZ8wkg2/cEebAD5JmC0PPnJdUw2+zFctEXo11FG5AFVmUsXAXiWqJcB85IIvYziV4y9ZyRWhFTCqXJIWR7kCoSBV5WIgPlLBg2nWI6BgPSrdg5SjryYjlScAifFVjZ8wkgqfhBOrhk8YSYbvTKL8StJsueBJjPQUEhBmUsUgIdmqRSCMJMN/ngj9s3zwKM5cNXbERi50c5ojHOYjFzwJnVcOn3CSKgAO8lANv5LOXy54nBBgCgEwLyVCVNMPTCVMladcocqkB8plAdWi6xJFmGo7c5VsZ+5E25mrYjtDkWSqsZdVPORBR/kpVENHbORCjyZZfBAb2dCrGTcmEKHKTqooOFRRtQyVyivywMfT3EDECm4gyohP5eirJWXkCTDZjqtmv00n23BTNTvuZDdYai6wcI4Z1egxHxngqzlnFOGuspDx/ZyS2EYNchonpZ/PuZtzNORp0nZYx6WeRJ1NnKIgDKeTSdODqkzIIzyQrMw+vONE8VJEWXtGQsFkhgMpk5OM1Uq1xOxAMGXyj5FgavVaB4IhaZJGYiF0RkAh6ZfGYiGE+sHwrxPNeYqKVY2zyCH+SqwEVGONYDwWQkel3kkiqeGueCJDx9JZmb5qqNI6MmJxD6Xgpjhmr+lWRCUZ2Hh9sNKMCZ4YWGMmH6MMcO3EbtJAtklLNzBFx6g8I/6QU1SWRH/4AjHMy7Ixpu16B8IDylVFYZThteoiyMNYr4I+HGK9BIIMfHWKEvS3H3hL1lfkYhy0askKKdCqBEdBq1XEkAGtRvClLG4oG8WQ5a0SxjZ8lZOx+9NTdAkPqXASsLG7LS0bmCrUw/w1e+ONVUIe5FXXjRinN1MFGdOf6uws4yWCkbNNioq608JJtkXFwEsO0i1SIWpMf479iGG0OGJ03nfnap65wcrvSl431kooieyk46zQlga3nTBPPuw2D2nwWwn65KNvsZAGPlVmKKmgmSzhVqiaqnO8Rij5P2VPcRU4B7v3c88RJahbLOTOESWYUzl6piRSlYWVQnpBB4PiA+28x4JGLsrBiu/McDnWlpn5LuXCbdN/Sat/I8PpWNXQ86aqGUnpcNv0lzTtSUqumad+LQvx8AHoSW882mTouYSV4K1xkAy8zKmsDnrJQzJ4kl5aHXbCYvRxop0vWh5qGvUXtUvU0pfL0As1ubrEMZSLs0l5QftCkRJ73j2hTOk9WOWsHOFjVyRqxnCpKBu0X9K0LtO4j9VIKy/8S/mylxdUG/RdL0/AO+O8KyveCQ9eR/W8F2O+ZZ3AceLXaw4uaGHn9ktWpWFSv3GggmmlIBek31q5xhnncats5EB1cxSkfDGTu1WPU4pOHFqlzwVZZJFTdc6jHCkmOlDf1MKkL8bqyhKs48R3auVcX85JyHXuh5yERrjXV6tMDtA5rVjlQN/6snrlOByIyAgUqCbmSBiIynAcQIY2wFhtjPiqzygEOhwLrgw6DgmmMhwHLjg6DgemMhwHqmM6DgYiMhzF4Jtdao3V4TjKoqvjkJR0hmORNGkE5swIP6fhQZTVwuQDJXUa9c1HrNuogPk4IJjKuF1sPAwxp1IqikqN7tFgKrSGYxoRWlrDMzqyNDe4Yd7XDasVcrCmnTUGx7c2Kt6PDG+tl2cfB6ZCaDiaMWE2rMLrI8+EEkYpEruDoZ4JR8MQdFhnngnHAxF2+WJhkbbUtciNPK2OBiSauJRxWh2NQzQPIP20OhqGYOYvKgppxlKnNfIEPX7ZFcwLRT1BD82kVEMinieJeZqXgQXRGXuaHw1FYLUbe8PU/WOruF1WyVjkpmp4xpas1vLw+1VUp3LcJSMiIvJ2Brvgjyl5sWhEQq+QGvWZHNMRMLE+SBKc/iSiqlNb3IWs2HTpteF2Ho6yuPiQSVPUHp/xswSlCjqvRQgWV38xnyooRezHqiTbJihklamkJo+8kR0wmFQoEjQqokRFawjrcWsD0KxsF+6SOOsysjoiZtNURzPngOn4U+Ap+fQAyoD32IMc7VBMRVGlSk5G2MxRnUi9UQZSLLegJJ6MXV62RKX7imzK7awYsjkwAvFls2k6Uqmhr24gyPuRGuAt7xNVw1yNX5PEg7GnqaWuQke0TFuqxqGMKlLGoeaZrsZsSy8WVVKUTsMUDp5pRcGHrMCEk4Vhlbvwh4sf734yLj5eiXQim9D58fGbj2+Pji+v3hyKENh8Ms6vr26uf774+dY4/+H2h0/XPxk3ny828G8KHbigRGb09WP9bTaxrW+/5W2d12rma8rd0ONt6AfQiCmNs/lzHSLVZH9cZqeg8qmWWlol3yNsFOTPu5rBs1eaN3003bS42IkS8Lz2Xr+eCsGugWAXPr5dx7QToRr2bmAmhnnv1EA8mJE9EAHONtcNgOSkK1MNsgp6Zx0/OXFCGGOQXMkKT/WS8RBxsk+t3n2vPKTZ4gXK3x96pCnaoH9t8oqVNfP4Bq+zqNq8XrTM3gk0dyLDyb6wZg+NGOT/jmsIkyilHWkV4LDNxJSOQWCQfNMPDMuAS+lcGgg8JzF2EVy9jbA4bc4EBCoCPFsgnNMcIIYoSZwZDAHOQxCZCbgyw3xDnUd+K8uo7dv5/lHdV//5z4n4Pz8zEHz77dHRNBiezMh3/H2sma470zAQCOA5icy5QYTANv3EseoHneL+atoBiYABX4aDKJ4LStbCc/4wc6JVDLHzBz8Ez/wC8t3WjDwtC/ss0mw1MTCatU69aw8+ORtw9h2JI3lIvfsGEvRsGgDNw/fag0/O0BF8bR99NxkQ6jEcwsmer+HzM6EjeYtNuT72IiqbshbzNXybPBNZ0Tt4oDt2PkDZ7T1rfS9ACS3ykmHRtv71zg/WxdPZQDHORDm06m/T2hZek43mJrn+JX8yvbrUIxqkn/YOvv4FPZtRR0pRieiJuaGur6XYtKiGVOMR0Q373XS9y35bl79Nr6hJwYlorftmYb3Dv8+qvVlACs3L7luB9S5rsM4brEmDGabrPDBFNLm8G0WJ+n8BwjGvgNktX4JY9KslRjP2XfC4K+CRqPLLz9bV5xq+vAErPst+1fL/nAoPvoMzir8NzwzryP6N6G0P1ldmePbN367vbm/ubo0Pl5//rn/zt5vP1/+6OL/9+Yeri79reWdO3MUHUM2B1oLu5puQkSNGENZPJaTKpnV8/Gb39ujY8ahfJwUXgpbCnJjlb8ieCWvP8mj3Mr39sjeb+9RxE8dfs7wGhIjEg6lwmGIvDZpjkfD8hyOjxY5r3se5lcTO6+NixOwEWppv7oGdSWvn3wa1vZ9qlZX63kSuZpUhrRBstC4aadmYa0HyAKKs1N//y9Fn+oB2cfZAHMPhWLvA3ycPZ7TZOMXoZxcIIuNfbT+zBSxG7Y4ZaeApzJdH1tJ4eZG9Nl/jWxjhBYauo2FYM5zZA+QcgYfz8a32RjtqAu/ogMbftO3cl8V0My/R+UXk3d0HbVa/uK/W673V9cKl8iw6CPMz/IOQXD85ycOa7o08yXaDDlE9i40oOcuJrNQ1IxuEwLeBb30d/jlsOVL5QVF5YcyHrGGbAn3OjKElOkSn2M+PPDk4ff/suVmXItgddjrSDnMikFpgO/4ePrq7/bh+t129Lwnhs3IZ2mRpXmCncMbFIElDzQY7M3WTDUiS/ANixYFdy73kYFdIJARR8nVjwX+fZeEb6ACuq8eXWjdFEzFkrWCDZpxh8VLHWlDqsQmaFVmkSE5UcEZHJzJ48BF+N7LZk64ZKjLhQJ/nTrpImTdwcv2YW+sorYaQTG70mwSE30Nhan/PIOQ48crhWr1abS6vbj5dnl/e/sfY3N59uLw24LvrzcXn28uLzepk9ed2VaG9XZ1s4aMtfE81HwEUP7C+/K8ZOSbcduLs8Un2j6xB9n9wLQkd2Mr+8imwint09MMJ/o+Gfy9+/Ar/R+bSfR22+9HfdtGPfxX/gFRWH4ppL4h7EFeCebDUGPdfcFgKIpn/TwxH4dffVn/9HyrSI0I==END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA