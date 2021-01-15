CC = clang++
CC_LINUX = g++

#Where hpp file is saved
KTABLE_INCLUDE = /usr/local/include

#Where lib is saved
KTABLE_LIB = /usr/local/lib/

#Archive file name
ARCHIVE_FILE = libktable.a

all: ktable.cpp
	$(CC) -o libktable.a -c ktable.cpp

all_linux: ktable.cpp
	$(CC_LINUX) -o libktable.a -c ktable.cpp

install: all
	cp *.hpp $(KTABLE_INCLUDE)
	cp $(ARCHIVE_FILE) $(KTABLE_LIB)

install_linux: all_linux
	cp *.hpp $(KTABLE_INCLUDE)
	cp $(ARCHIVE_FILE) $(KTABLE_LIB)
