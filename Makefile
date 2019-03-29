all : bitabit bit_operations

OPTIONS = -Wall -Werror


bitabit : bitabit.o
	gcc $(OPTIONS) -o $@ $<

bit_operations : bit_operations.o
	gcc $(OPTIONS) -o $@ $<

%.o : %.c bit_operations.h
	gcc $(OPTIONS) -c $<

