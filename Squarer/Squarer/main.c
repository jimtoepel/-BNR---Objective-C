//
//  main.c
//  Squarer
//
//  Created by Jim Toepel on 9/16/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#include <stdio.h>

int squareThisNumber(int number)
{
    int squared = number * number;
    return squared;
}

int main(int argc, const char * argv[]) {

    int input = 5;
    
    int squared = squareThisNumber(input);
    
    printf("\"%i\" squared is \"%i\"\n", input, squared);

    return 0;
}
