#include <unistd.h>
#include <errno.h>
//#include <sys/errno.h>
#include "UART_HW.h"

void UartEnable(UART_Registers *uart)
{
    uint32_t tmp = uart->CR;
    tmp &= ~UART_CR_EN_DIS_MASK;
    tmp |= (UART_CR_TX_EN | UART_CR_RX_EN);
    uart->CR = tmp;
}

char Zynq7000_UART_SENDCHAR(UART_Registers *pUART, char ch)
{
    while ((pUART->SR) & UART_SR_TXFULL)
        ;
    pUART->FIFO = ch;
    /*If there are no errors, the same character that has been written is returned. If an error occurs, EOF is returned and the error indicator is set.
*/
    return ch;
}

char Zynq7000_UART_GETCHAR(UART_Registers *pUART)
{
    /* Is it call from an interrupt */
    if (pUART->ISR & UART_SR_RXOVR)
    {
        char ch = pUART->FIFO & 0xff;
        pUART->ISR = (UART_IXR_RXOVR | UART_IXR_RXFULL);
        return ch;
    }
    else
    { /* no the case */
        while ((pUART->SR & UART_SR_RXEMPTY) == UART_SR_RXEMPTY)
            ;
        char ch = pUART->FIFO & 0xff;
        return ch;
    }
    return 0;
}

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
            if ( c == '\r') {
                if (++n < len){
                    c='\n';
                    Zynq7000_UART_SENDCHAR((UART_Registers *)UART0_BASE, c);
                    *ptr++ = '\n';
                    num++;                
                }
                break;                
            }
            else if (c == '\n' ) 
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