CXX = arm-none-eabi-g++

CPU = cortex-a7
DIRECTIVES = 

CXXFLAGS = -mcpu=${CPU} -fpic -ffreestanding -fno-exceptions ${DIRECTIVES}
CXXSRCFLAGS = -O2 -Wall -Wextra
LFLAGS = -ffreestanding -O2 -nostdlib

OS_INC_DIR = include