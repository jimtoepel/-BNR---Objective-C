//
//  main.c
//  BigNumberz
//
//  Created by Jim Toepel on 1/2/16.
//  Copyright © 2016 FunderDevelopment. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    uint64_t n = 0;
    for (int i = 0; i < 64; i++) {
        n = n << 2;
        n++;
    }
    
    printf("number is %lld\n", n);
}
