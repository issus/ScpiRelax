################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dave/Generated/ETH_LWIP/lwip/port/memcpy.c \
../Dave/Generated/ETH_LWIP/lwip/port/sys_arch.c 

OBJS += \
./Dave/Generated/ETH_LWIP/lwip/port/memcpy.o \
./Dave/Generated/ETH_LWIP/lwip/port/sys_arch.o 

C_DEPS += \
./Dave/Generated/ETH_LWIP/lwip/port/memcpy.d \
./Dave/Generated/ETH_LWIP/lwip/port/sys_arch.d 


# Each subdirectory must supply rules for building sources it contributes
Dave/Generated/ETH_LWIP/lwip/port/%.o: ../Dave/Generated/ETH_LWIP/lwip/port/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4700_F144x2048 -DXMC_DEBUG_ENABLE -I"$(PROJECT_LOC)/Libraries/libscpi/inc" -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC4700_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -O0 -ffunction-sections -fdata-sections -Wall -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.

