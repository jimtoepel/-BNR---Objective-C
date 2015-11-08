//
//  main.m
//  BMITime
//
//  Created by Jim Toepel on 10/18/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FUNEmployee.h"
#import "FUNAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // Create and array of FUNEmployee Objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            // Create an instance of FUN Employee
            FUNEmployee *mikey = [[FUNEmployee alloc] init];
            
            // Give the instance variables interesting values
            mikey.weightInKilos = 90 + i;
            mikey.heightInMeters = 1.8 - i/10.0;
            mikey.employeeID = i;
            
            // put the employee in the employees array
            [employees addObject:mikey];
        }
        
        // Create 10 assets
        for (int i = 0; i < 10; i++) {
            // Create an asset
            FUNAsset *asset = [[FUNAsset alloc] init];
            
            // Give it an interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %D", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            // Get a random number betweeen 0 and 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            
            // Find that employee
            FUNEmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            // Assign the asset to the employee
            [randomEmployee addAsset:asset];
        
        }
        
        NSLog(@"Employees: %@", employees);
        
        NSLog(@"Giving up ownership of one employee");
        
        [employees removeObjectAtIndex:5];
        
        for (FUNEmployee *a in employees)
        {
            [a removeAsset:0];
        }
        
        NSLog(@"Employees: %@", employees);
        
        NSLog(@"Giving Up ownership of arrays");
        
        employees = nil;
        
        
        
    }
    return 0;
}
