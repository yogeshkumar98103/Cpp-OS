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
### Notes
There is no concept of processes here as there will be only single process. However that one process will support multiple threads.