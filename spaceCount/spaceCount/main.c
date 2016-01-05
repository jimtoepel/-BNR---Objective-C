//
//  main.c
//  spaceCount
//
//  Created by Jim Toepel on 1/4/16.
//  Copyright © 2016 FunderDevelopment. All rights reserved.
//

#include <stdio.h>
#include <string.h>

int spaceCount(const char *string) {
 
    char space = 0x20; // x20 is "space"
    uint16_t len = strlen(string);
    int sum = 0;
    for (int i = 0; i < len; i++) {
        if (string[i] == space) {
            sum++;
        }
    }
    return sum;
}


int main(int argc, const char * argv[]) {

    const char *sentence = "He was not in the cab at the time.";
    printf("\"%s\" has %d spaces \n", sentence, spaceCount(sentence));
    
    return 0;
}
