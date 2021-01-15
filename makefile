OS := $(shell uname)
ifeq ($(OS),Darwin)
	CC = clang++ -std=c++11
else
	CC = g++ -std=c++11
endif
#Where hpp file is saved
KTABLE_INCLUDE = /usr/local/include

#Where lib is saved
KTABLE_LIB = /usr/local/lib/

#Archive file name
ARCHIVE_FILE = libktable.a

all: ktable.cpp
	$(CC) -o libktable.a -c ktable.cpp

install: all
	cp *.hpp $(KTABLE_INCLUDE)
	cp $(ARCHIVE_FILE) $(KTABLE_LIB)
