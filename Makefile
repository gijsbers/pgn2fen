CC := gcc

CFLAGS := -O2 -Wall -Wno-array-bounds

pgn2fen : main.c Makefile
	$(CC) $(CFLAGS) main.c -o pgn2fen

.PHONY : clean

clean:
	$(RM) pgn2fen a.out

