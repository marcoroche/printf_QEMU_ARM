//#define _POSIX_SOURCE

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
//#include <termios.h> //sys/termios not provided
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

void stdxxx_VS_STDXXX_FILENO(void)
{
    printf("stdin->_flags = 0x%08X\n", stdin->_flags);
    printf("STDIN_FILENO  : %d\n", STDIN_FILENO);
    printf("stdout->_flags = 0x%08X\n", stdout->_flags);
    printf("STDOUT_FILENO  : %d\n", STDOUT_FILENO);
    printf("stderr->_flags = 0x%08X\n", stderr->_flags);
    printf("STDERR_FILENO  : %d\n", STDERR_FILENO);
}
void main(void)
{
    /* Test memry allocation */
    buffer = (char *)malloc(200 * 1024);

    for (int i = 0; i < 3; i++)
    {
        /* Test TTY or Not */
        printf("\033[0;31m"); //Set the text to the color red
        puts("*** Selftest at statup ***\n");
        struct stdfst
        {
            FILE *stdiof;
            char name[20];
        } stdtest[] = {{stdin, "STDIN"}, {stdout, "STDOUT"}, {stderr, "STDERR"}};

        //stdxxx_VS_STDXXX_FILENO();

        for (int i = 0; i < (int)(sizeof(stdtest) / sizeof(stdtest[0])); i++)
        {
            int fno = fileno(stdtest[i].stdiof);
            if (isatty(fno))
            {

                //printf("\033[1;34m");
                printf("INFO > %s is a terminal\n", stdtest[i].name);
            }
            else
            {
                //tcgetattr(fno);
                //tcsetattr(fno,TCSANOW,&newtio);
                printf("\033[01;33m");
                printf("INFO > %s is NOT a terminal or TTY\n", stdtest[i].name);
            }
        }
        puts("*** END OF > Selftest at statup ***\n");
        printf("\033[0m"); //Resets the text to default color

        printf("Enter a username:\n");
        scanf("%s", sUsername);
        printf("Enter your Nickname:\n");
        scanf("%s", sNickname);
        Console(LVL_WARNING, "%s %s was recently authorized to access your terminal\r\n", sUsername, sNickname);
        Console(LVL_INFO, "under construction\r\n");
        printf("Hello world! and bye!!\n");
    }

    /* demo perror */
    FILE *fp;
    /* first rename if there is any file */
    rename("file.txt", "newfile.txt");

    /* now let's try to open same file */
    fp = fopen("file.txt", "r");
    if (fp == NULL)
    {
        perror("SYS ERROR");
        return (-1);
    }
    fclose(fp);

    printf("bye!!\n");
    while (1)
        ;
}