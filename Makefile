TARGET = cli-example

CC = g++
CFLAGS = -g -Wall

SRCS = $(shell find ./src -type f -name *.cpp)
HEADS = $(shell find -type f -name *.h)

all: $(TARGET)

$(TARGET): *.o
	$(CC) $(CFLAGS) -o $(TARGET) *.o
	$(RM) *.o
	mkdir -p ./build
	mv $(TARGET) ./build

*.o: $(SRCS) $(HEADS)
	$(CC) $(CFLAGS) -c $(SRCS) $(HEADS)

clean:
	$(RM) $(TARGET) *.o ./src/*.gch