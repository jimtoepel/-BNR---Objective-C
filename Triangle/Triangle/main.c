//
//  main.c
//  Triangle
//
//  Created by Jim Toepel on 9/15/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float angleA, float angleB)
{
    float CalcAngleC = 180.0 - angleA - angleB;
    return CalcAngleC;
}


int main(int argc, const char * argv[]) {

    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The Third angle is %.2f\n", angleC);
    
    return 0;
}
