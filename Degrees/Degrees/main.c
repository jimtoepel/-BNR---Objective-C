//
//  main.c
//  Degrees
//
//  Created by Jim Toepel on 9/15/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

// Declare a Global variable
static float lastTemperature;


float fahrenheitFromCelsius(float cel)
{
    lastTemperature = cel;
    float fahr = cel * 1.8 + 32.0;
    printf("%f Celsius is %f Fahrenheit.\n", cel, fahr);
    return fahr;
}

float celsiusFromFahrenheit(float fahr)
{
    float cel = (fahr - 32.0) / 1.8;
    printf("%f Fahrenheit is %f Celsius.\n", fahr, cel);
    return cel;
}



int main(int argc, const char * argv[]) {

    float freezeInC = 0;
    float freezeInF = fahrenheitFromCelsius(freezeInC);
    printf("Water freezes at %f degrees Fahrenheit.\n", freezeInF);
    printf("The last temperature converted was %f.\n", lastTemperature);
    
    
    freezeInC = celsiusFromFahrenheit(freezeInF);
    printf("Water freezes at %f degrees Celsius.\n", freezeInC);
    
    
    return EXIT_SUCCESS;
}
