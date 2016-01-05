//
//  main.c
//  gradeInTheShade
//
//  Created by Jim Toepel on 1/4/16.
//  Copyright © 2016 FunderDevelopment. All rights reserved.
//

#include <stdio.h>

float averageFloats(float data[], int dataCount)
{
    
    float sum = 0.0;
    for (int i = 0; i < dataCount; i++) {
        sum = sum + data[i];
    }
    return sum / dataCount;
    
}


int main(int argc, const char * argv[]) {

    // Create an array of floats
    float gradeBook[] = {60.2, 94.5, 81.1};
    
    // Calculate the average
    float average = averageFloats(gradeBook, 3);
    
    // No need to Free the array
    
    printf("Average = %.2f\n", average);
    
    
    
    return 0;
}
