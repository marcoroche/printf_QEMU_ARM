ENTRY(Reset_Handler)

MEMORY
{
    SRAM (xrw) : ORIGIN = 0x00000000, LENGTH = 128M
}

/* define stack size and heap size here */
stack_size = 4*1024;  /* HEX = 0x00400 */
heap_size = 128*1024; /* HEX = 0x20000 */
/* define beginning and ending of stack */
__stack = ORIGIN(SRAM)+LENGTH(SRAM) - 8;
__STACK_SIZE = stack_size;
_sstack = __stack - stack_size;


SECTIONS
{
/*_sidata = 0x0000;
/* Initialized data sections goes into RAM, load LMA copy after code */
/*.isr_vector : AT ( _sidata )  { 
        . = ALIGN(4);

        /* Startup code */
    /*    . = ALIGN(4);
    } > SRAM*/
    .text 0x0000 :  {
        KEEP(*(.isr_vector))    
        *(.isr_vector)
        *(.text*) 
    } > SRAM
    .data :         { *(.data*) } > SRAM
    .rodata :       { *(.rodata*) } > SRAM

    __bss_start__ = .;
    .bss :          { 
    *(.bss*)  *(COMMON) 
    } > SRAM
    __bss_end__ = ALIGN(8);

    /* END OF BSS and BEGINING OF HEAP */
    . = ALIGN (0x8);
    PROVIDE(_end = 0x01000000);
    PROVIDE(__end__ = _end); 
    PROVIDE(end = _end);
    /*heap_end = _end + heap_size;*/

    /*.heap :
    {
    /*_heap_start = .;
    __heap_start__ = .;
    end = __heap_start__;
    _end = end;
    __end = end;*/
    /*PROVIDE (end = .)   ; */
    /*. = . + heap_size;
    } > SRAM*/
    /*. = ALIGN(4);
    . = _sstack;
    .stack :
    {
        . = . + stack_size;
    } > SRAM
*/
}