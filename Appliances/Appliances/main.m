//
//  main.m
//  Appliances
//
//  Created by Jim Toepel on 12/20/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FUNAppliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        FUNAppliance *a = [[FUNAppliance alloc] init];
        
        NSLog(@"a is %@", a);
        [a setValue:@"Washing Machine" forKey:@"productName"];
        [a setVoltage:240];
        NSLog(@"a is %@", a);
        
        NSLog(@"the prouct name is %@", [a valueForKey:@"productName"]);
        
        
    }
    return 0;
}
