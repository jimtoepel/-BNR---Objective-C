//
//  FUNEmployee.m
//  BMITime
//
//  Created by Jim Toepel on 10/30/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import "FUNEmployee.h"
#import "FUNAsset.h"

// A Class extension
@interface FUNEmployee ()
{
    NSMutableArray *_assets;
}

@property (nonatomic) unsigned int officeAlarmCode;

@end


@implementation FUNEmployee


// Accessors for assets properties
- (void)setAssets:(NSArray *)a
{
    _assets = [a mutableCopy];
}


- (NSArray *)assets
{
    return [_assets copy];
}


- (void)addAsset:(FUNAsset *)a
{
    // is assets nil?
    if (!_assets) {
        
        //Create the array
        _assets = [[NSMutableArray alloc] init];
    }
    [_assets addObject:a];
}


-( void)removeAsset:(FUNAsset * )a
{
    [_assets removeObjectAtIndex:a];
}


- (unsigned int)valueOfAssets
{
    // Sum up the resale value of the assets
    unsigned int sum = 0;
    for (FUNAsset *a in _assets) {
        sum += [a resaleValue];
    }
    return sum;
}



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
    return [NSString stringWithFormat:@"<Employee %d: $%u in assets>", self.employeeID, self.valueOfAssets];
}


- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
