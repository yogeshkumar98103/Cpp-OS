OS_INC_DIR = include

ifeq ($(RASPI_MODEL), 4)
	# Raspberry Pi 4 

	AARCH = aarch64
	CXX = arm-none-eabi-g++ 
	# aarch64-none-elf-cc
	CPU = cortex-a53
	DIRECTIVES = -D AARCH64 -D RASPI_MODEL=${RASPI_MODEL}
	MFPU = crypto-neon-fp-armv8
	MARCH = armv8-a+crc 

else ifeq ($(RASPI_MODEL), 2)
	# Raspberry Pi 2

	AARCH = aarch32
	CXX = arm-none-eabi-g++
	CPU = cortex-a7
	DIRECTIVES = -D AARCH32 -D RASPI_MODEL=${RASPI_MODEL}
	MFPU = neon-vfpv4
	MARCH = armv7-a
else 

endif

# -march=${MARCH}
ARCHFLAGS = -mcpu=${CPU} -mfpu=${MFPU} -mfloat-abi=hard 
CXXFLAGS = -fpic -ffreestanding -fno-rtti -fno-exceptions ${DIRECTIVES}
CXXSRCFLAGS = -O2 -Wall -Wextra
LFLAGS = -ffreestanding -O2 -nostdlib