/* Currently, there are two exception models in the ARM architecture (reset is considered a kind of exception):
The classic model, used in pre-Cortex chip and current Cortex-A/R chips. In it, the memory at 0 contains several exception handlers:

 Offset  Handler
 ===============
 00      Reset 
 04      Undefined Instruction
 08      Supervisor Call (SVC)
 0C      Prefetch Abort
 10      Data Abort
 14      (Reserved)
 18      Interrupt (IRQ)
 1C      Fast Interrupt (FIQ)
*/

	.extern __stack
	.extern _start

.section .isr_vector, "x"
.global Vector_Init
    .code 32
/* .global _Reset
_Reset:
    B Reset_Handler // Reset
    B .             // Undefined
    B .             // SWI
    B .             // Prefetch Abort
    B .             // Data Abort
    B .             // reserved
    B .             // IRQ
    B .             // FIQ
*/
Vector_Init:
        LDR     PC, Reset_Addr
        LDR     PC, Undefined_Addr
        LDR     PC, SWI_Addr
        LDR     PC, Prefetch_Addr
        LDR     PC, Abort_Addr
        NOP
        LDR     PC, IRQ_Addr
        LDR     PC, FIQ_Addr    

Reset_Addr:      .word     Reset_Handler
Undefined_Addr:  .word     Undefined_Handler
SWI_Addr:        .word     SWI_Handler
Prefetch_Addr:   .word     Prefetch_Handler
Abort_Addr:      .word     Abort_Handler
IRQ_Addr:        .word     IRQ_Handler
FIQ_Addr:        .word     FIQ_Handler


.global Reset_Handler
 Reset_Handler:
/*     MSR cpsr, #0x93     //SVC mode  
    MSR spsr, #0x13     //set SPSR to Umode with IRQ enabled 
    MSR cpsr, #0x13     //SVC mode  
    ldr sp, = __stack
*/

    // Enable Interrupts on CPU Side:
 /*    MRS r1, cpsr        // get the cpsr. 
    //BIC r1, r1, #0x80   // enable IRQ (ORR to disable). 
    ORR r1, r1, #0x80
    MSR cpsr_c, r1      // copy it back, control field bit update.
*/
    //ldr fp, = __stack 
    //mov fp, #0 
/*
It should turn on the clocks and it should configure the memory interfaces, 
then it can jump to a fixed address or load some code from Flash and execute it. 
This procedure and its code is very specific to the architecture 
so you should find the information on the manual of the hardware platform.
 */

    // Branch to C code  
    BL _start
    B .  

	.equ T_bit, 0x20

Undefined_Handler:
    // Put system/user mode R14-R0, exception address (LR - (4(ARM) or 2(THUMB))) and SPSR on stack
    // used for logging
    STMDB      SP, {R0-LR}^
    NOP
    SUB        SP, SP, #60
    MRS        R0, SPSR
    SUB        R1, LR, #2
    // if ARM mode subtract 2 more
    TST        R0, #T_bit
    B .    
    SUBEQ      R1, R1, #2
    STMDB      SP!, {R1}
    STMDB      SP!, {R0}
    NOP
    MOV        R0, SP

    B .
SWI_Handler:
    B .
Prefetch_Handler:
Abort_Handler:
IRQ_Handler:
FIQ_Handler:
    B .
    