# RASPI_MODEL = 2
OS_INC_DIR = include

ifeq ($(RASPI_MODEL), 4)
	# Raspberry Pi 4 

	AARCH = aarch64
	CPU = cortex-a72
	DIRECTIVES = -D AARCH64
	MFPU = crypto-neon-fp-armv8
	MARCH = armv8-a+crc 

else ifeq ($(RASPI_MODEL), 2)
	# Raspberry Pi 2

	AARCH = aarch32
	CPU = cortex-a7
	DIRECTIVES = -D AARCH32
	MFPU = neon-vfpv4
	MARCH = armv7-a
else 

endif

CXX = arm-none-eabi-g++
ARCHFLAGS = -mcpu=${CPU} -mfpu=${MFPU} -mfloat-abi=hard -march=${MARCH}
CXXFLAGS = -fpic -ffreestanding -fno-exceptions ${DIRECTIVES}
CXXSRCFLAGS = -O2 -Wall -Wextra
LFLAGS = -ffreestanding -O2 -nostdlib