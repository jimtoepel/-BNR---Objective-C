//
//  main.c
//  Numbers
//
//  Created by Jim Toepel on 9/17/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, const char * argv[]) {

    double y = 12345.6789;
    printf("y is %.2f\n", y);
    printf("y is %.2e\n", y);
    
    double rad = 1;
    double sinOfRad = sin(rad);
    printf("Sine of %.2f rad is %.3f\n", rad, sinOfRad);
    
    
    return 0;
}
