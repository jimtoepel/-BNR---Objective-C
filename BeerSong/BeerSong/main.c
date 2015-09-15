//
//  main.c
//  BeerSong
//
//  Created by Jim Toepel on 9/15/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#include <stdio.h>

void singSongFor(int numberOfBottles)
{
    if (numberOfBottles == 0) {
        printf("There are simply no more bottles of beer on the wall.\n\n");
    } else {
        printf("%d bottles of beer on the wall. %d bottles of beer. \n", numberOfBottles, numberOfBottles);
        int oneFewer = numberOfBottles - 1;
        printf("Take one down, pass it around, %d bottles of beer on the wall.\n\n", oneFewer);
        singSongFor(oneFewer); //This function calls itself!
        
        
        // right before the function ends, print something
        printf("Put a bottle in the recycling, %d empty bottles in the bin.\n", numberOfBottles);
    }
}



int main(int argc, const char * argv[]) {

    // We could sing for 99, but 4 is easier to see mechanically!
    singSongFor(4);
    
    return 0;
}
