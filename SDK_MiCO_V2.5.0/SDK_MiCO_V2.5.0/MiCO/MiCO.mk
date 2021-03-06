#
#  UNPUBLISHED PROPRIETARY SOURCE CODE
#  Copyright (c) 2016 MXCHIP Inc.
#
#  The contents of this file may not be disclosed to third parties, copied or
#  duplicated in any form, in whole or in part, without the prior written
#  permission of MXCHIP Corporation.
#

NAME = MiCO

ifndef USES_BOOTLOADER_OTA
USES_BOOTLOADER_OTA :=1
endif

ifeq ($(BUILD_TYPE),debug)
#$(NAME)_COMPONENTS += test/malloc_debug
endif


ifneq ($(APP),bootloader)
$(NAME)_COMPONENTS += MiCO/core \
                      MiCO/system \
                      MiCO/security 
endif

GLOBAL_DEFINES += 

# Add MCU component
$(NAME)_COMPONENTS += platform/MCU/$(HOST_MCU_FAMILY)

# Define the default ThreadX and FreeRTOS starting stack sizes
FreeRTOS_START_STACK := 800
ThreadX_START_STACK  := 800
NoRTOS_START_STACK   := 800


GLOBAL_INCLUDES += . \
                   system \
                   system/include \
                   security
                   
# $(NAME)_CFLAGS  = $(COMPILER_SPECIFIC_PEDANTIC_CFLAGS)
