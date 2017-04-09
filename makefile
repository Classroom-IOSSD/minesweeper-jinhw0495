
CFLAGS = -Wall
OBJS = conio.o minesweeper.o
CC = gcc
HEADERS = conio.h
TARGET = minesweeper

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET)
%.o: %.c
	$(CC) $(CFLAGS) -c $<
$(OBJS): $(HEADERS)

.PHONY: clean
clean:
	$(RM) $(OBJS) $(TARGET)

