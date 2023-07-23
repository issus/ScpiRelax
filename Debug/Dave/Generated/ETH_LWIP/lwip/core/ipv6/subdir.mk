################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dave/Generated/ETH_LWIP/lwip/core/ipv6/dhcp6.c \
../Dave/Generated/ETH_LWIP/lwip/core/ipv6/ethip6.c \
../Dave/Generated/ETH_LWIP/lwip/core/ipv6/icmp6.c \
../Dave/Generated/ETH_LWIP/lwip/core/ipv6/inet6.c \
../Dave/Generated/ETH_LWIP/lwip/core/ipv6/ip6.c \
../Dave/Generated/ETH_LWIP/lwip/core/ipv6/ip6_addr.c \
../Dave/Generated/ETH_LWIP/lwip/core/ipv6/ip6_frag.c \
../Dave/Generated/ETH_LWIP/lwip/core/ipv6/mld6.c \
../Dave/Generated/ETH_LWIP/lwip/core/ipv6/nd6.c 

OBJS += \
./Dave/Generated/ETH_LWIP/lwip/core/ipv6/dhcp6.o \
./Dave/Generated/ETH_LWIP/lwip/core/ipv6/ethip6.o \
./Dave/Generated/ETH_LWIP/lwip/core/ipv6/icmp6.o \
./Dave/Generated/ETH_LWIP/lwip/core/ipv6/inet6.o \
./Dave/Generated/ETH_LWIP/lwip/core/ipv6/ip6.o \
./Dave/Generated/ETH_LWIP/lwip/core/ipv6/ip6_addr.o \
./Dave/Generated/ETH_LWIP/lwip/core/ipv6/ip6_frag.o \
./Dave/Generated/ETH_LWIP/lwip/core/ipv6/mld6.o \
./Dave/Generated/ETH_LWIP/lwip/core/ipv6/nd6.o 

C_DEPS += \
./Dave/Generated/ETH_LWIP/lwip/core/ipv6/dhcp6.d \
./Dave/Generated/ETH_LWIP/lwip/core/ipv6/ethip6.d \
./Dave/Generated/ETH_LWIP/lwip/core/ipv6/icmp6.d \
./Dave/Generated/ETH_LWIP/lwip/core/ipv6/inet6.d \
./Dave/Generated/ETH_LWIP/lwip/core/ipv6/ip6.d \
./Dave/Generated/ETH_LWIP/lwip/core/ipv6/ip6_addr.d \
./Dave/Generated/ETH_LWIP/lwip/core/ipv6/ip6_frag.d \
./Dave/Generated/ETH_LWIP/lwip/core/ipv6/mld6.d \
./Dave/Generated/ETH_LWIP/lwip/core/ipv6/nd6.d 


# Each subdirectory must supply rules for building sources it contributes
Dave/Generated/ETH_LWIP/lwip/core/ipv6/%.o: ../Dave/Generated/ETH_LWIP/lwip/core/ipv6/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4700_F144x2048 -DXMC_DEBUG_ENABLE -I"$(PROJECT_LOC)/Libraries/libscpi/inc" -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC4700_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -O0 -ffunction-sections -fdata-sections -Wall -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.

