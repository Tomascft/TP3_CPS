all : bitabit

OPTIONS = -Wall -Werror


bitabit : bitabit.o bit_operations.o
	gcc $(OPTIONS) -o $@ bitabit.o bit_operations.o


bitabit.o: bitabit.c bit_operations.h
	gcc $(OPTIONS) -c bitabit.c

bit_operations.o: bit_operations.c bit_operations.h
	gcc $(OPTIONS) -c bit_operations.c

clean:
	rm -f *.o bitabit