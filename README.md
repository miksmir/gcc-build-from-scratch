# gcc-build-from-scratch
This repository is part of my blog article "We Don't Need No IDE" where I demonstrate how to perform each GCC compilation step manually from scratch.
Check out [my blog article](https://the-mikroscope.hashnode.dev/we-dont-need-no-ide) for more details!

## Usage
This is clearly meant for Linux for obvious reasons, but I am sure you can get the shell script to work on Windows/Mac too. Aside from the path to bash in the script's shebang line, there should not be any issues with portability if you use the GCC toolchain.

Simply run build.sh with `./build.sh` and the script will compile and link everything together. An executable named "main" will be generated.
Additionally, since the point of this shell script is to show every intermediary step through the entire GCC build process, every ".i", ".s", and ".o" file is generated, too.

Once you run main with `./main`, a string from every file will be printed to ensure that every object file, library, and header file was included properly.
```
$ ./main
Printing From file1
Printing From file2
This string is located in myheader.h
Printing from libfile1
Printing from libfile2
```
