CC=gcc

CFLAGS=-Wall -Wextra -Wpedantic -std=c11

SOURCES=src/*.c

DIR_DEBUG = debug
DIR_RELEASE = release

all: build_release

build_debug:
	mkdir -p $(DIR_DEBUG)
	$(CC) $(CFLAGS) -O0 -g $(SOURCES) -o $(DIR_DEBUG)/main.bin

build_release:
	mkdir -p $(DIR_RELEASE)
	$(CC) $(CFLAGS) -O3 $(SOURCES) -o $(DIR_RELEASE)/main.bin

clean:
	rm -rf *.o $(DIR_DEBUG)/main.bin $(DIR_RELEASE)/main.bin

