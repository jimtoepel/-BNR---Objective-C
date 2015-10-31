//
//  FUNEmployee.m
//  BMITime
//
//  Created by Jim Toepel on 10/30/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import "FUNEmployee.h"

@implementation FUNEmployee

-(double)yearsOfEmployment
{
    // Do I have a non-nil hiredate?
    if (self.hireDate) {
        // NSTimeInterval is the same as a double
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0; // Seconds per year
    } else {
        return 0;
    }
}


- (float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}


- (NSString *) description
{
    return [NSString stringWithFormat:@"<Employee %d>", self.employeeID];
}



@end
