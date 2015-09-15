//
//  main.c
//  TwoFloats
//
//  Created by Jim Toepel on 9/14/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {

    float   first;
    float   second;
    double  sum;
    
    
    first = 3.14;
    second = 42.0;
    
    sum = first + second;
    
    printf("The sum of 3.14 and 42.0 is %f.\n", sum);
    
    return 0;
}
