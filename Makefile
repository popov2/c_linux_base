CC=gcc

CFLAGS=-Wall -Wextra -Wpedantic -std=c11

SOURCES=src/*.c

all: build_release

build_debug:
	$(CC) $(CFLAGS) -O0 -g $(SOURCES) -o debug/main.bin

build_release:
	$(CC) $(CFLAGS) -O3 $(SOURCES) -o release/main.bin

clean:
	rm -rf *.o debug/main.bin release/main.bin

