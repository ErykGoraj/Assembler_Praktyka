../../build/print_text: ../../build/print_text.o
	gcc -o ../../build/print_text ../../build/print_text.o -no-pie

../../build/print_text.o: print_text.asm
	nasm -f elf64 -g -F dwarf print_text.asm -o ../../build/print_text.o -l ../../build/print_text.lst