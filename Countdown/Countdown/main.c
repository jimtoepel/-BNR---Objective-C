//
//  main.c
//  Countdown
//
//  Created by Jim Toepel on 9/20/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {

    printf("Hi, what number should I count down from?\n\n");
    
    
    int start = 99;
    
    for (int i = start; i >= 0; i = i- 3) {
        printf("%i !\n", i);
        if (i % 5 == 0) {
            printf("Found one!\n");
        }
    }
    
    
    
    
    return 0;
}
