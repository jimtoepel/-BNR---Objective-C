//
//  main.c
//  PBR
//
//  Created by Jim Toepel on 9/26/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[]) {

    double pi = 3.14;
    double integerPart;
    double fractionPart;
    
    
    // Pass the address of integerPart as an Argument
    fractionPart = modf(pi, &integerPart);
    
    // Find the value store in integerPart
    printf("integerPart = %.0f, fractionPart = %.2f\n", integerPart, fractionPart);
    
    return 0;
}
