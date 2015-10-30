//
//  main.m
//  BMITime
//
//  Created by Jim Toepel on 10/18/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FUNEmployee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // Create and instance of FUNEmployee
        FUNEmployee *mikey = [[FUNEmployee alloc] init];
        
        // Give that instance variable interesting values
        mikey.weightInKilos = 96;
        mikey.heightInMeters = 1.8;
        mikey.employeeID = 12;
        mikey.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"];
        
        // Log the instance variables using getters
        
        float height = mikey.heightInMeters;
        int weight = mikey.weightInKilos;
        NSLog(@"mikey is %.2f meters tall and weights %d kilgrams", height, weight);
        NSLog(@"Employee %u hired on %@", mikey.employeeID, mikey.hireDate);
    
        // Log some values using custom methods
        float bmi = [mikey bodyMassIndex];
        double years = [mikey yearsOfEmployment];
        NSLog(@"mikey has a BMI of %.2f, has worked with us for %.2f years", bmi, years);
        
        
        
    }
    return 0;
}
