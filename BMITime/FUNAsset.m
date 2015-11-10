//
//  FUNAsset.m
//  BMITime
//
//  Created by Jim Toepel on 11/2/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import "FUNAsset.h"
#import "FUNEmployee.h"

@implementation FUNAsset

- (NSString *)description
{
    // Is holder nil?
    if (self.holder) {
        return  [NSString stringWithFormat:@"<%@: $%d, assignned to %@>", self.label, self.resaleValue, self.holder];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d unassigned>", self.label, self.resaleValue];
    }
}


- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}


@end
