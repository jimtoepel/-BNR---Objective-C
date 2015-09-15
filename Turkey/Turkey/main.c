//
//  main.c
//  Turkey
//
//  Created by Jim Toepel on 9/14/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {

    // Declare a variable call "weight" that is afloat
    
    float weight;
    
    // Store a number in that variable
    weight = 14.2;
    
    // Log it to the user
    printf("The Turkey weights %f.\n", weight);
    
    // Declare another variable of type float
    float cookingTime;
    
    // Calculate the cooking time and store it in a variable
    
    cookingTime = 15.0 + 15.0 * weight;
    
    // Log that to the user using printf
    
    printf("Cook it for %f minutes.\n", cookingTime);
    
    // End this function and indicate success!
    return 0;
}
