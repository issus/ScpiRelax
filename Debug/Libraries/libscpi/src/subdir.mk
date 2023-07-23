################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/libscpi/src/error.c \
../Libraries/libscpi/src/expression.c \
../Libraries/libscpi/src/fifo.c \
../Libraries/libscpi/src/ieee488.c \
../Libraries/libscpi/src/lexer.c \
../Libraries/libscpi/src/minimal.c \
../Libraries/libscpi/src/parser.c \
../Libraries/libscpi/src/units.c \
../Libraries/libscpi/src/utils.c 

OBJS += \
./Libraries/libscpi/src/error.o \
./Libraries/libscpi/src/expression.o \
./Libraries/libscpi/src/fifo.o \
./Libraries/libscpi/src/ieee488.o \
./Libraries/libscpi/src/lexer.o \
./Libraries/libscpi/src/minimal.o \
./Libraries/libscpi/src/parser.o \
./Libraries/libscpi/src/units.o \
./Libraries/libscpi/src/utils.o 

C_DEPS += \
./Libraries/libscpi/src/error.d \
./Libraries/libscpi/src/expression.d \
./Libraries/libscpi/src/fifo.d \
./Libraries/libscpi/src/ieee488.d \
./Libraries/libscpi/src/lexer.d \
./Libraries/libscpi/src/minimal.d \
./Libraries/libscpi/src/parser.d \
./Libraries/libscpi/src/units.d \
./Libraries/libscpi/src/utils.d 


# Each subdirectory must supply rules for building sources it contributes
Libraries/libscpi/src/%.o: ../Libraries/libscpi/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4700_F144x2048 -DXMC_DEBUG_ENABLE -I"$(PROJECT_LOC)/Libraries/libscpi/inc" -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC4700_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -O0 -ffunction-sections -fdata-sections -Wall -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.

