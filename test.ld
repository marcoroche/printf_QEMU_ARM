/* Entry Point */
ENTRY(_reset)

MEMORY
{
    SRAM (xrw) : ORIGIN = 0x00000000, LENGTH = 512K
}
SECTIONS
{
/*
.data  = The Data segment stores the global and static variables initialized by the application code.
.bss   = The BSS segment stores the global and static variable that are not initialized by the application code. The compiler initialize this data to 0.
HEAP   = The HEAP is allocated after the BSS segment and it grows in the direction showed in the above picture.
STACK  = The STACK is allocated at the end of the of the SRAM region and is started address is equal to the end address of the SRAM. It the opposite HEAP direction.
*/

    .globl :
    /* The startup code into ROM memory */
    /*.isr_vector : */
    {
/*        . = ALIGN(4);
        KEEP(*(.isr_vector)) /* Startup code */
        . = ALIGN(4);
    } >SRAM

    .text :
    {
        *(.text)
        . = ALIGN(4);
    } > SRAM

    .rodata :
    {
        *(.rodata)
        . = ALIGN(4);
    } > SRAM

    .data :
    {
        __data_load__ = LOADADDR (.data);
        __data_start__ = .;
        *(.data)
        . = ALIGN(4);
        __data_end__ = .;
    } > SRAM

    .bss :
    {
        __bss_start__ = .;
        *(.bss)
        . = ALIGN(4);
        __bss_end__ = .;
    } > SRAM

    .stack :
    {
        __stack_start__ = .;
        . = . + (LENGTH(SRAM) - SIZEOF(.data) - SIZEOF(.bss)) / 2;
        . = ALIGN(4);
        __stack_end__ = .;
    } > SRAM

/* _sbrk() manage dynamic allocation */ 

    .heap :
    {
        __heap_start__ = .;
        . += LENGTH(SRAM) - SIZEOF(.data) - SIZEOF(.bss) - SIZEOF(.stack);
        . = ALIGN(4);
        __heap_end__ = .;
        _end = __heap_end__;
        end = _end;
    } > SRAM
}