//
//  main.c
//  Numbers
//
//  Created by Jim Toepel on 9/17/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {

    unsigned long x = 255;
    printf("x is %lu.\n", x);
    printf("In octal, x is %lo.\n", x);
    printf("In hexadecimal, x is %lx.\n", x);
    
    return 0;
}
