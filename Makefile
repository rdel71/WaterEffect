CC = g++
CFLAGS = -g -Wall -I/home/robd/libs/include/
PROG = cube

SRC_DIR=src/
CPP_SOURCES:=$(shell find $(SRC_DIR) -type f -name '*.cpp')

SRCS = $(CPP_SOURCES)
#src/*.cpp src/bt/input/*.cpp src/bt/states/*.cpp src/bt/utils/*.cpp

#LIBS = -L/home/robd/libs/lib -lglut -lGLU -lSDL2
LIBS = -L./ -lglut -lGLU -lGLEW -lopenal -lserial
#-lSDL2

all: $(PROG)

$(PROG):	$(SRCS)
	$(CC) $(CFLAGS) -o $(PROG) $(SRCS) $(LIBS)

clean:
	rm -f $(PROG)
