CC := gcc
FLAGS := -Wall -Wextra -fPIC
RM := rm -f
OS := $(shell uname -s)
TEST_OUT := geohash_test
LIBNAME := libgeohash.so

%.o: %.c
	$(CC) $(FLAGS) -c $< -o $@

geohash.o:

ifeq ($(OS), Darwin)
so:	geohash.o
	$(CC) $(FLAGS) -shared -Wl,-install_name,$(LIBNAME) geohash.o -o $(LIBNAME) -lc
else
so:	geohash.o
	$(CC) $(FLAGS) -shared -Wl,-soname,$(LIBNAME) geohash.o -o $(LIBNAME) -lc
endif

all: geohash.o so

test:	test-geohash.c geohash.o
	$(CC) $(FLAGS) test-geohash.c geohash.o -o $(TEST_OUT) && ./$(TEST_OUT)

clean:
	$(RM) *.o $(LIBNAME) $(TEST_OUT)
