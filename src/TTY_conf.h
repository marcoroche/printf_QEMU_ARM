#ifndef _TTY_CONF_H_
#define _TTY_CONF_H_

/* Level of console message */
#define LVL_INFO 1
#define LVL_SUCCESS 2
#define LVL_WARNING 3
#define LVL_DANGER 4

//General Formatting
#define GEN_FORMAT_RESET                "0"
/*#define GEN_FORMAT_BRIGHT               "1"
#define GEN_FORMAT_DIM                  "2"
#define GEN_FORMAT_UNDERSCORE           "3"
#define GEN_FORMAT_BLINK                "4"
#define GEN_FORMAT_REVERSE              "5"
#define GEN_FORMAT_HIDDEN               "6"
*/
//Foreground Colors
#define FOREGROUND_COL_BLACK            "30"
#define FOREGROUND_COL_RED              "31"
#define FOREGROUND_COL_GREEN            "32"
#define FOREGROUND_COL_YELLOW           "33"
#define FOREGROUND_COL_BLUE             "34"
#define FOREGROUND_COL_MAGENTA          "35"
#define FOREGROUND_COL_CYAN             "36"
#define FOREGROUND_COL_WHITE            "37"


//Background Colors
/*#define BACKGROUND_COL_BLACK            "40"
#define BACKGROUND_COL_RED              "41"
#define BACKGROUND_COL_GREEN            "42"
#define BACKGROUND_COL_YELLOW           "43"
#define BACKGROUND_COL_BLUE             "44"
#define BACKGROUND_COL_MAGENTA          "45"
#define BACKGROUND_COL_CYAN             "46"
#define BACKGROUND_COL_WHITE            "47"
*/                

#define SHELL_COLOR_ESCAPE_SEQ(X, mess) "\x1b["X"m"mess
#define SHELL_FORMAT_RESET  "\033["GEN_FORMAT_RESET"m"

static char colorMsgInfo[] = SHELL_COLOR_ESCAPE_SEQ(FOREGROUND_COL_CYAN, "INFO: ");
static char colorMsgWarning[] = SHELL_COLOR_ESCAPE_SEQ(FOREGROUND_COL_MAGENTA, "WARNING: ");
static char colorMsgSuccess[] = SHELL_COLOR_ESCAPE_SEQ(FOREGROUND_COL_GREEN, "SUCCESS: ");
static char colorMsgDanger[] = SHELL_COLOR_ESCAPE_SEQ(FOREGROUND_COL_RED, "DANGER: ");
static char colorMsgDefault[] = SHELL_COLOR_ESCAPE_SEQ(FOREGROUND_COL_WHITE, "");

#define KNRM  "\x1B[0m"
#define KRED  "\x1B[31m"
#define KGRN  "\x1B[32m"
#define KYEL  "\x1B[33m"
#define KBLU  "\x1B[34m"
#define KMAG  "\x1B[35m"
#define KCYN  "\x1B[36m"
#define KWHT  "\x1B[37m"

// prints colored text
void Console(int level, const char *szMess, ...); 

#endif