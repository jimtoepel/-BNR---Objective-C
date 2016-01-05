//
//  main.c
//  yostringz
//
//  Created by Jim Toepel on 1/3/16.
//  Copyright © 2016 FunderDevelopment. All rights reserved.
//

#include <stdio.h>  // gives you printF
#include <stdlib.h> // for malloc/free
#include <string.h> // for strlen

int main(int argc, const char * argv[]) {

    char x = '!'; // This is "!"
    
    while (x <= '~') { // "~"
        printf("%x is %c\n", x, x);
        x++;
    }
    
    // Get a point to 5 bytes of memory on the heap
    const char *start = "A backslash after two newlines and a tab:\n\n\t\\";

    
    //Print out the string and its length
    printf("%s has %zu characters\n", start, strlen(start));
    
    // 3rd letter?
    printf("The third letter is %c\n", start[2]);
    

    
    return 0;
}



/*


\n = new line
\t = tab
\' = single quote
\" = double quote
\0 = null byte 0x00
\\ = backslashhhhhh




*/