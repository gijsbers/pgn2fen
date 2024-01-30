CC := gcc
PREFIX := /usr

CFLAGS := -O2 -Wall -Wno-array-bounds

pgn2fen : main.c Makefile
	$(CC) $(CFLAGS) main.c -o pgn2fen

install: pgn2fen
	@cp -fv pgn2fen $(PREFIX)/bin/.
	@chmod -v 755 $(PREFIX)/bin/pgn2fen

uninstall:
	$(RM) $(PREFIX)/bin/pgn2fen

.PHONY : clean

clean:
	$(RM) pgn2fen a.out

