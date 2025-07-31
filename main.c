// main.c
   
#include <stdio.h>
#include "myheader.h"
#include "mylibraryheader.h"

int main() {
  
       // Printing from other functions	
	print_from_file1();
        print_from_file2();
	
	// Printing from myheader.h
	printf("%s\n", headerstring);
	
	// Printing from static library functions
        print_from_libfile1();
        print_from_libfile2();
        
        return 0;
}

