# ***// Makefile \\***

CC=gcc
AR=ar
FLAGS= -Wall


all: mains maind

mains: main.o libmyMath.a
	$(CC) -Wall -o mains main.o -L. libmyMath.a

maind: main.o libmyMath.so
	$(CC) -Wall -o maind main.o -L. ./libmyMath.so

mymaths: libmyMath.a

libmyMath.a :basicMath.o power.o myMath.h
	$(AR) -rcs libmyMath.a basicMath.o power.o

mymathd: libmyMath.so

libmyMath.so: basicMath.o power.o myMath.h
	$(CC) -shared -o libmyMath.so basicMath.o power.o

main.o: main.c myMath.h
	$(CC) -Wall -c main.c

power.o: power.c myMath.h
	$(CC) -Wall -fPIC -c power.c

basicMath.o: basicMath.c myMath.h
	$(CC) -Wall -c basicMath.c 

clean:
	rm -f *.o *.a *.so mains maind
	
.PHONY:clean all