#ifndef __OS__KERNEL_H
#define __OS__KERNEL_H

#ifdef AARCH64
#include "aarch64/kernel.h"
#else
#include "aarch32/kernel.h"
#endif

#endif // __OS__KERNEL_H