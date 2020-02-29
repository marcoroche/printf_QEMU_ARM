#define _POSIX_SOURCE

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "UART_HW.h"
#include "TTY_conf.h"

void hardware_init_hook(void) 
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

void software_init_hook(void) 
{
    /*

    Do stuff here!! 

    */
    puts("INFO : HAL level status --> UP and Running\n");
}

char sUsername[80];
char sNickname[80];

char *buffer;

void main(void)
{
    /* Test memry allocation */
    buffer = (char *)malloc(200 * 1024); 

    /* Test TTY or Not */
    printf("\033[0;31m"); //Set the text to the color red
    puts("*** Selftest at statup ***\n");
    struct stdfst{
        FILE *stdiof; 
        char name[20];
    } stdtest[] = {{stdin, "STDIN"}, {stdout, "STDOUT"}, {stderr, "STDERR"}};
    for (int i=0; i<(int)(sizeof(stdtest) / sizeof(stdtest[0])); i++)
    {
        if (isatty(fileno(stdtest[i].stdiof)))
        {
            printf("\033[1;34m");
            printf( "INFO > %s is a terminal\n", stdtest[i].name);
        }
        else
        {
            printf("\033[01;33m");
            printf( "INFO > %s is NOT a terminal or TTY\n", stdtest[i].name);
        }
    }
    puts("*** END OF > Selftest at statup ***\n");    
    printf("\033[0m"); //Resets the text to default color





    for (int i=0; i<5; i++)
    {
        printf("Enter a username:\n");
        scanf("%s", sUsername);
        printf("Enter your Nickname:\n");
        scanf("%s", sNickname);    
        Console(LVL_WARNING, "%s %s was recently authorized to access your terminal\r\n", sUsername, sNickname);
        Console(LVL_INFO, "under construction\r\n");
        printf("Hello world! and bye!!\n");
    }


    printf("and bye!!\n");
    printf("bye!!\n");
    while (1)
        ;
}