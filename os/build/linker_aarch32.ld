ENTRY(_start)

SECTIONS
{
    . = 0x8000;
    __start = .;
    __text_start = .;
    .text :
    {
        KEEP(*(.text.boot))
        *(.text)
    }
    . = ALIGN(4096);
    __text_end = .;

    __rodata_start = .;
    .rodata :
    {
        *(.rodata)
    }
    . = ALIGN(4096);
    __rodata_end = .;

    __data_start = .;
    .data :
    {
        /* start_ctors = .;
        KEEP(*( .init_array ));
        KEEP(*(SORT_BY_INIT_PRIORITY( .init_array.* ))); 
        end_ctors = .; */
        *(.data)
    }
    . = ALIGN(4096);
    __data_end = .;

    __bss_start = .;
    .bss :
    {
        bss = .;
        *(.bss)
    }
    . = ALIGN(4096);
    __bss_end = .;
    .stack :
    {
        . = . + 4096;
        __core0_stack = .;
        . = . + 4096;
        __core1_stack = .;
        . = . + 4096;
        __core2_stack = .;
        . = . + 4096;
        __core3_stack = .;
    }
    __end = .;
}