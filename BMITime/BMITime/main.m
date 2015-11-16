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
        
        // Create a dictionary of executives
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
        
        for (int i = 0; i < 10; i++) {
            // Create an instance of FUN Employee
            FUNEmployee *mikey = [[FUNEmployee alloc] init];
            
            // Give the instance variables interesting values
            mikey.weightInKilos = 90 + i;
            mikey.heightInMeters = 1.8 - i/10.0;
            mikey.employeeID = i;
            
            // put the employee in the employees array
            [employees addObject:mikey];
            
            // Is this the first employee?
            if (i ==0) {
                [executives setObject:mikey forKey:@"CEO"];
            }
            
            // Is this the second employee?
            if (i == 1) {
                [executives setObject:mikey forKey:@"CTO"];
            }
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
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
            
            [allAssets addObject:asset];
        
        }
        
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets"
                                                              ascending:YES];
        NSSortDescriptor *eid = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        [employees sortUsingDescriptors:@[voa, eid]];
        
        NSLog(@"Employees: %@", employees);
        
        NSLog(@"Giving up ownership of one employee");
        
        [employees removeObjectAtIndex:5];
        
        NSLog(@"allAssets: %@", allAssets);
        
        // Print out the Dictionary
        NSLog(@"Executives: %@", executives);
        
        // Print out the CEO's informaiton
        NSLog(@"CEO: %@", executives[@"CEO"]);
        executives = nil;

        /*
        for (FUNEmployee *a in employees)
        {
            [a removeAsset:0];
        }
        */
        
        NSLog(@"Employees: %@", employees);
        
        NSLog(@"Giving Up ownership of arrays");
        
        allAssets = nil;
        employees = nil;
        
        
        
    }
    sleep(100);
    return 0;
}
