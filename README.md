# gcc-build-from-scratch
This repository is part of my blog article "We Don't Need No IDE" where I demonstrate how to perform each GCC compilation step manually from scratch.
Check out [my blog article](https://the-mikroscope.hashnode.dev/we-dont-need-no-ide) for more details!

## Usage
Simply run build.sh with `./build.sh` and the script will compile and link everything together. An executable named "main" will be generated.
Once you run main with `./main`, a string from every file will be printed to ensure that every object file, library, and header file was included properly.
