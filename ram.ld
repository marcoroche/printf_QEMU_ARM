/* Entry Point */
ENTRY(_reset)

MEMORY
{
    SRAM (xrw) : ORIGIN = 0x00000000, LENGTH = 256K
}
SECTIONS
{
    .globl :
    /* The startup code into ROM memory */
    /*.isr_vector : */
    {
/*        . = ALIGN(4);
        KEEP(*(.isr_vector)) /* Startup code */
        . = ALIGN(4);
    } >SRAM

/*    .text :
    {
        *(.text)
        . = ALIGN(4);
    } > SRAM

/*    .rodata :
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

    .heap :
    {
        __heap_start__ = .;
        . += LENGTH(SRAM) - SIZEOF(.data) - SIZEOF(.bss) - SIZEOF(.stack);
        . = ALIGN(4);
        __heap_end__ = .;
    } > SRAM*/
}