//
//  main.c
//  bitwize
//
//  Created by Jim Toepel on 12/29/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {

    
    unsigned char a = 0x3c;
    unsigned char b = 0xa9;
    unsigned char c = a | b;
    
    printf("Hex: %x | %x = %x\n", a, b, c);
    printf("Decimal: %d | %d = %d\n", a, b, c);
    
    unsigned char d = a & b;
    
    printf("Hex: %x & %x = %x\n", a, b, d);
    printf("Decimal: %d & %d = %d\n", a, b, d);

    return 0;
}
