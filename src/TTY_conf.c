#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include "TTY_conf.h"

void Console(int level, const char *szMess, ...)
{
    va_list args;
    va_start(args, szMess);
    char *strStartColor = NULL ;
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
    fprintf(stderr, szMess, args);
    va_end(args);
    fprintf(stderr, SHELL_FORMAT_RESET);
}