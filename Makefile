ARMGNU    := arm-none-eabi
C_FLAGS   := -fomit-frame-pointer -ffreestanding -specs=nano.specs -specs=nosys.specs -Wall -O0 -ggdb3  -Wextra -std=c99 -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard
LD        := -static -TSECTIONS.ld

# -Ttest.ld 

#--entry Reset_Handler
#-nostdlib 


BIN		:= bin
SRC		:= src
INCLUDE	:= include
LIB		:= lib

LIBRARIES	:=
ENTRY       := start
EXECUTABLE	:= main


#all: $(LIB)/$(ENTRY).o $(BIN)/$(EXECUTABLE)
all: $(BIN)/$(EXECUTABLE)

run: clean all
	cls
#	if exist q:\ ( echo Q Drive already set ) else subst Q: "C:\Program Files\qemu"
	qemu-system-arm -machine xilinx-zynq-a9 -cpu cortex-a9 -s -m 512M -serial stdio -serial telnet:localhost:4321,server,nowait -kernel $(BIN)/$(EXECUTABLE)

$(LIB)/$(ENTRY).o: $(SRC)/$(ENTRY).s
	echo "GENERATING ENTRY POINT"
	$(ARMGNU)-as $(SRC)/$(ENTRY).s -o $(LIB)/$(ENTRY).o

$(BIN)/$(EXECUTABLE): $(SRC)/*.c $(SRC)/*.s SECTIONS.ld
	echo "COMPILING C LEVEL" 
	$(ARMGNU)-gcc $(C_FLAGS) -I$(INCLUDE) -L$(LIB) $^ -o $@ $(LIBRARIES)  -Xlinker $(LD) 
	$(ARMGNU)-nm $(BIN)/$(EXECUTABLE) > $(BIN)/symbols.txt
	$(ARMGNU)-objdump --disassemble-all $(BIN)/$(EXECUTABLE) > $(BIN)/asm.S
	$(ARMGNU)-objdump -s  $(BIN)/$(EXECUTABLE) > $(BIN)/MixedCASM.txt

clean:
#	del /F /Q $(BIN)\*.*
#	-del /F $(BIN)\* /y
    #-rm $(BIN)/*

	
