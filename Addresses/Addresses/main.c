//
//  main.c
//  Addresses
//
//  Created by Jim Toepel on 9/23/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {

    
    int i = 17;
    int *addressOfI = &i;
    
    float decimal = 3.1459;
    
    printf("i stores its value at %p\n", addressOfI);
    printf("this function starts at %p\n", main);
    printf("the int stored at addressOfI is %d\n", *addressOfI);
    
    *addressOfI = 89;
    printf("Now i is %d\n", i);
    printf("An int is %zu bytes\n", sizeof(int));
    printf("A pointer is %zu bytes\n", sizeof(int *));
    
    printf("A float is %zu bytes\n", sizeof(decimal));
    printf("The pointer is %zu bytes\n", sizeof(float *));
    
    return 0;
}
