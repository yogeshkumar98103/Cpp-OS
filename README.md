# Operating System in C++

This OS is designed to be used as a library to run C++ code on bare metal. 

### Requirements:- 
1. qemu-system-arm
2. [arm-none-eabi](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads)

### Instructions:-
```bash
cd example
make
make run
```

### Tutorial
Create a project folder with code.cpp and Makefile
```
mkdir project
cd project
touch code.cpp
touch Makefile
```
Now copy the os folder to your project.

Your directory structure will look like this:-
```
- os
  | - build
  | - include
  | - src
- code.cpp
- Makefile
```

**code.cpp**
```c++
#include "os/kernel.h"
#include "os/console.h"

extern "C" int entry(int r1, int r2, int atags){
    os::kernel::init(r1, r2, atags);

    os::console::puts("Kernel Started");
    while (true){
        os::console::getc();
    }

    os::kernel::destroy();
}
```

**Explanation:** On top we've included the kernel and console from os. Next we've created entry function. This is the function which bootloader will load. In the entry function, first thing we need to do is to initialize the kernel. `kernel::init` function initializes the `uart` which is used for i/o. Next we've printed a string to console. After that we've setup a loop in which we take charaters typed by user as input.

**Makefile**
```Makefile
include ../os/build/constants.mk
QEMU = qemu-system-arm

CUR_DIR = ${shell pwd}
export OS_ELF = ${CUR_DIR}/os.elf 
export EXT_OBJ_FILES = ${CUR_DIR}/code.o

link: code.o
	@${MAKE} -C ../os/build link
	
compile: code.o
	@${MAKE} -C ../os/build compile

%.o: %.cpp 
	@${CXX} ${CXXFLAGS} -I../os/${OS_INC_DIR} -c $< -o $@ ${CXXSRCFLAGS}

run: ${OS_ELF}
	@${QEMU} -append 'console=ttyS0' -nographic -m 1G -M raspi2 -serial mon:stdio -kernel ${OS_ELF}
```
**Explanation:** This is a simple Makefile for running the above code. First we're including a makefile which contains some useful constants like CXX, CXXFlags, CXXSRCFLAGS etc. Next we're declared QEMU. If qemu is not added to `PATH`, then change this so that it points to where qemu is located on your system. Then we've created two variables `OS_ELF` which gives absolute path of final elf file generated. This file will then be loaded into qemu. Next `EXT_OBJ_FILES` stores absolutes path of all object files in your project. These objects will be linked with os. We've exported above two variables so that Makefile inside `os` can use them. In the target `link` we are simply running link target in Makefile of `os`. This compiles source code in your project to objects and link them with objects of `os` to create os.elf binary. Similarly `compile` target is also created. This just compiles to objects and does not perform linking. Next is a simple recipe to compile .cpp files to .o files. Finally we have `run` target. This emulates raspberry pi 2 (1GB Ram) with `os.elf` binary created in previous steps. 

### Notes
There is no concept of processes here as there will be only single process. However that one process will support multiple threads.

### Links

https://github.com/jsandler18/raspi-kernel
https://wiki.osdev.org/Raspberry_Pi_Bare_Bones#Pi_3.2C_4
https://elinux.org/Device_Tree_Reference
https://github.com/BrianSidebotham/arm-tutorial-rpi/tree/master/part-1
https://static.docs.arm.com/den0024/a/DEN0024A_v8_architecture_PG.pdf
