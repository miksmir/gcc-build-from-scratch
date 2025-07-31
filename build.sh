#! /usr/bin/bash
# build.sh

# Path to myheader.h and mylibraryheader.h ("." is current directory)
headerpath="."

# Path to libmystaticlibrary.a ("." is current directory)
librarypath="."

# Creating a static library from libfile1.c and libfile2.c:
gcc -c libfile1.c -o libfile1.o
gcc -c libfile2.c -o libfile2.o
ar rcs libmystaticlibrary.a libfile1.o libfile2.o

# Preprocessor Stage:
# Preprocess all source code files separately
gcc -I$headerpath -E main.c -o main.i
gcc -E file1.c -o file1.i
gcc -E file2.c -o file2.i

# Compiler Stage:
# Compile all preprocessed files separately
gcc -S main.i -o main.s
gcc -S file1.i -o file1.s
gcc -S file2.i -o file2.s

# Assembler Stage:
# Generate object files for each assembly file separately
gcc -c main.s -o main.o
gcc -c file1.s -o file1.o
gcc -c file2.s -o file2.o

# Linker Stage:
# Link object files together into an executable
# and include libmystaticlibrary.a
gcc main.o file1.o file2.o -L$librarypath -lmystaticlibrary -o main
