//
//  main.m
//  BMITime
//
//  Created by Jim Toepel on 10/18/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FUNPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // Create and instance of FUNPerson
        FUNPerson *mikey = [[FUNPerson alloc] init];
        
        // Give that instance variable interesting values
        mikey.weightInKilos = 96;
        mikey.heightInMeters = 1.8;
        
        // Log the instance variables using getters
        
        float height = mikey.heightInMeters;
        int weight = mikey.weightInKilos;
        NSLog(@"mikey is %.2f meters tall and weights %d kilgrams", height, weight);
    
        // Log some values using custom methods
        float bmi = [mikey bodyMassIndex];
        NSLog(@"mikey has a BMI of %f", bmi);
        
        
    }
    return 0;
}
