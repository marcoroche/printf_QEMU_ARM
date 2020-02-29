#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "UART_HW.h"

void HAL_init()
{
    UartEnable((UART_Registers *)UART0_BASE);
    UartEnable((UART_Registers *)UART1_BASE);

    puts("INFO : UART0 READY on stdout\n");
    puts("INFO : UART1 READY on stderr\n");
    /*

    Do stuff here!! 

    */

    puts("INFO : HAL level status --> UP and Running\n");
}

void hardware_init_hook(void) 
{
    HAL_init();
}

void software_init_hook(void) 
{

}

char sUsername[80];
char sNickname[80];

char *buffer;

void main(void)
{
    

    buffer = (char *)malloc(200 * 1024); 
    if (isatty(fileno(stdin)))
        printf( "stdin is a terminal\n" );

    printf("Enter a username:\n");
    scanf("%s", sUsername);
    printf("Enter your Nickname:\n");
    scanf("%s", sNickname);    
    printf("Hello world! and bye!!\n");
    printf("and bye!!\n");
    printf("bye!!\n");
    while (1)
        ;
}