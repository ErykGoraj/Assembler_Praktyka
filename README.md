# Assembler Practice

This project was created to practice configuring a software project properly.
It was developed on Linux, so only Linux is currently supported.

See [Note.md](Note.md) for additional notes.

## Dependencies

Install the following tools before building the programs:

- [NASM](https://www.nasm.us/) - the assembler
- GCC - the linker/compiler used to create the executable
- GNU Make - the build tool

## Building and Running

Open a terminal in one of the project directories, for example:

```bash
cd src/Hello_World
make
```

The compiled executable is created in the `build` directory at the project
root. Run it with:

```bash
../../build/hello_world
```

To build and run the other example, use:

```bash
cd src/Better_Jumping
make
../../build/better_jumping
```
