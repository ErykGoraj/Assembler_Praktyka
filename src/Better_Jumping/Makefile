../../build/better_jumping: ../../build/better_jumping.o
	gcc -o ../../build/better_jumping ../../build/better_jumping.o -no-pie

../../build/better_jumping.o: better_jumping.asm
	nasm -f elf64 -g -F dwarf better_jumping.asm -o ../../build/better_jumping.o -l ../../build/better_jumping.lst