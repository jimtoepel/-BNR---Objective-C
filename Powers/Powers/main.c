//
//  main.c
//  Powers
//
//  Created by Jim Toepel on 9/25/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {

    
    printf("The largest signed short is %.0f\n", pow(2,15)-1);
    printf("The smallest signed short is %.0f\n", -pow(2,15)-1);
    
    printf("The largest unsigned short is %.0f\n", pow(2,16));
    
    
    return 0;
}
