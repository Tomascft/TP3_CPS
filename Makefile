all : bitabit bit_operations test_read test_write generate_sequence

OPTIONS = -Wall -Werror


bitabit : bitabit.o
	gcc $(OPTIONS) -o $@ $<

bit_operations : bit_operations.o
	gcc $(OPTIONS) -o $@ $<

test_read: test_read.o
	gcc $(OPTIONS) -o $@ $<

test_write : test_write.o
	gcc $(OPTIONS) -o $@ $<

generate_sequence : generate_sequence.o
	gcc $(OPTIONS) -o $@ $<

%.o : %.c bit_operations.h bfile.h
	gcc $(OPTIONS) -c $<

