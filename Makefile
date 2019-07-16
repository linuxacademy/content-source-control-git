CC = g++
CFLAGS = -Wall
PREFIX = /usr/local

hi-there: src/hi-there.cpp
	$(CC) $(CFLAGS) -o hi-there src/hi-there.cpp

.PHONY: install
install: hi-there
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp $< $(DESTDIR)$(PREFIX)/bin/hi-there

.PHONY: uninstall
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/hi-there
