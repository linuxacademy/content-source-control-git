CC = g++
CFLAGS = -Wall

hi-there: src/hi-there.cpp
	$(CC) $(CFLAGS) -o hi-there src/hi-there.cpp
