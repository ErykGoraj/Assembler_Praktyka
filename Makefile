# Makefile for entire project
build/hello_world: build/hello_world.o
	gcc -o build/hello_world build/hello_world.o -no-pie
build/hello_world.o: src/hello_world.asm
	nasm -f elf64 -g -F dwarf src/hello_world.asm -o build/hello_world.o -l build/hello_world.lst

# 1. NASM creates the .o and .lst files.
# - .lst is not necessary for the computer,
#   but humans can analyze it to see the translation
#   from assembly instructions to machine code.

# 2. The hello_world target can now be built.
# - GCC links hello_world.o and creates the final executable program.
 
