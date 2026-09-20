../../build/basic_jumping: ../../build/basic_jumping.o
	gcc -o ../../build/basic_jumping ../../build/basic_jumping.o -no-pie

../../build/basic_jumping.o: basic_jumping.asm
	nasm -f elf64 -g -F dwarf basic_jumping.asm -o ../../build/basic_jumping.o -l ../../build/basic_jumping.lst