
COMPILER=cc
CFLAGS=-O3 -Wall -pedantic -Wextra
SRC=verify_sdl.c
SDL2_FLAGS=`sdl2-config --cflags --libs`

all: rebuild

rebuild: clean build

build:
	$(COMPILER) $(CFLAGS) $(SRC) $(SDL2_FLAGS) -o verify_sdl 

clean:
	rm -f verify_sdl