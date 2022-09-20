CC=sdcc
NO_OPT=--nogcse --noinvariant --noinduction --nojtbound --noloopreverse --nolabelopt --nooverlay --peep-asm
DEBUG=--debug
OUT_DIR = out
SRC_DIR = src

CFLAGS=--model-large -I./include \
		-DSDCC_CYGNAL $(DEBUG) --less-pedantic --xram-size 4096 --stack-auto \
		--no-peep --int-long-reent --float-reent

SRC	= \
serial.c \
queue.c \
tasks.c \
list.c \
heap_1.c \
port.c


OBJ = $(SRC:.c=.rel)

main : $(SRC_DIR)/main.c Makefile ./include/portmacro.h $(OBJ)
	$(CC) $(CFLAGS) -o $(OUT_DIR)/$@.ihx $(SRC_DIR)/main.c $(addprefix $(OUT_DIR)/,$(OBJ))
	packihx $(OUT_DIR)/$@.ihx > $(OUT_DIR)/$@.hex

%.rel : $(SRC_DIR)/%.c Makefile ./include/portmacro.h
	$(CC) -c $(CFLAGS) -o $(OUT_DIR)/$@ $<

.PHONY: clean
clean:
	rm $(OUT_DIR)/*.*
