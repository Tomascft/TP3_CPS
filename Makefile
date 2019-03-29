<<<<<<< HEAD
all : bitabit
=======
all : bitabit bit_operations test_read test_write generate_sequence
>>>>>>> 096fbe3ad579a7f15c732c1c91ee4e3602c29d78

OPTIONS = -Wall -Werror


bitabit : bitabit.o bit_operations.o
	gcc $(OPTIONS) -o $@ bitabit.o bit_operations.o

#bit_operations : bit_operations.o
#	gcc $(OPTIONS) -o $@ $<

<<<<<<< HEAD
#%.o : %.c bit_operations.h
#	gcc $(OPTIONS) -c $<
=======
test_read: test_read.o
	gcc $(OPTIONS) -o $@ $<

test_write : test_write.o
	gcc $(OPTIONS) -o $@ $<

generate_sequence : generate_sequence.o
	gcc $(OPTIONS) -o $@ $<

%.o : %.c bit_operations.h bfile.h
	gcc $(OPTIONS) -c $<
>>>>>>> 096fbe3ad579a7f15c732c1c91ee4e3602c29d78

bitabit.o: bitabit.c bit_operations.h
	gcc $(OPTIONS) -c bitabit.c

bit_operations.o: bit_operations.c bit_operations.h
	gcc $(OPTIONS) -c bit_operations.c

clean:
	rm -f *.o bitabit