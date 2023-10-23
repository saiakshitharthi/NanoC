nasm -f elf64 $1 -o $1.o
nasm -f elf64 required_functions.asm -o required_functions.o
ld $1.o required_functions.o -o output
./output 