TARGET = cli-example
TARGET_DIR = ./build

CC = g++
CFLAGS = -g -Wall

SRCS = $(shell find ./src -type f -name *.cpp)
HEADS = $(shell find ./src -type f -name *.h)

all: $(TARGET)

$(TARGET): *.o
	$(CC) $(CFLAGS) -o $(TARGET) *.o
	mkdir -p $(TARGET_DIR)
	mv $(TARGET) $(TARGET_DIR)
	$(RM) *.o

*.o: $(SRCS) $(HEADS)
	$(CC) $(CFLAGS) -c $(SRCS) $(HEADS)

clean:
	$(RM) $(TARGET_DIR)/$(TARGET) *.o ./src/*.gch