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
        [a setProductName:@"Washing Machine"];
        [a setVoltage:240];
        NSLog(@"a is %@", a);
        
        
    }
    return 0;
}
