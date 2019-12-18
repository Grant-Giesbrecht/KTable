CC = clang++

all: KTable.cpp
	$(CC) -o libktable.a -c ktable.cpp
