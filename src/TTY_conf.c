#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <unistd.h>
#include <errno.h>
#include "TTY_conf.h"
#include "UART_HW.h"

#undef ERRNO
extern int errno;

/** syscall override **/
int _isatty(int file)
{
    if ((file == STDOUT_FILENO) || (file == STDIN_FILENO))
    {
        return 1;
    }
    else if (file == STDERR_FILENO)
    {
        errno = ENOTTY; 
        return 0;
    }
    else
    {
        errno = EBADF;
        return 0;
    }
} /* _isatty () */

int _write(int file, char *ptr, int len)
{
    int n;
    switch (file)
    {
    case STDOUT_FILENO: /*stdout*/
        for (n = 0; n < len; n++)
        {
            Zynq7000_UART_SENDCHAR((UART_Registers *)UART0_BASE, *ptr++);
        }
        break;
    case STDERR_FILENO: /* stderr */
        for (n = 0; n < len; n++)
        {
            Zynq7000_UART_SENDCHAR((UART_Registers *)UART1_BASE, *ptr++);
        }
        break;
    default:
        errno = EBADF;
        return -1;
    }
    return len;
}

int _read(int file, char *ptr, int len)
{
    int n;
    int num = 0;
    switch (file)
    {
    case STDIN_FILENO:
        for (n = 0; n < len; n++)
        {
            char c;
            c = Zynq7000_UART_GETCHAR((UART_Registers *)UART0_BASE);
            /* echo the carater on the stdout */
            Zynq7000_UART_SENDCHAR((UART_Registers *)UART0_BASE, c);
            *ptr++ = c;
            num++;
            /* ascii code 10, 13 or both 10 and 13*/
            if (c == '\r')
            {
                if (++n < len)
                {
                    c = '\n';
                    Zynq7000_UART_SENDCHAR((UART_Registers *)UART0_BASE, c);
                    *ptr++ = '\n';
                    num++;
                }
                break;
            }
            else if (c == '\n')
            {
                break;
            }
        }
        break;
    default:
        errno = EBADF;
        return -1;
    }
    return num;
}

/* Colored stderr */
void Console(int level, const char *szMess, ...)
{
    va_list args;
    va_start(args, szMess);
    char *strStartColor = NULL;
    switch (level)
    {
    case LVL_INFO:
        strStartColor = colorMsgInfo;
        break;
    case LVL_WARNING:
        strStartColor = colorMsgWarning;
        break;
    case LVL_SUCCESS:
        strStartColor = colorMsgSuccess;
        break;
    case LVL_DANGER:
        strStartColor = colorMsgDanger;
        break;
    default:
        strStartColor = colorMsgDefault;
        break;
    }
    fprintf(stderr, strStartColor);
    /* 
    The vfprintf() function is similar to fprintf(), 
    except that arg_ptr points to a list of arguments 
    whose number can vary from call to call in the program. 
    These arguments should be initialized by va_start() 
    for each call. In contrast, fprintf() can have a list of arguments, 
    but the number of arguments in that list is fixed 
    when you compile the program. 
    Source: https://www.ibm.com/support/knowledgecenter/SSLTBW_2.2.0/com.ibm.zos.v2r2.bpxbd00/vfprtf.htm
    */
    vfprintf(stderr, szMess, args);
    va_end(args);
    fprintf(stderr, SHELL_FORMAT_RESET);
}