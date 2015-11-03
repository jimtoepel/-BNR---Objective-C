//
//  FUNAsset.m
//  BMITime
//
//  Created by Jim Toepel on 11/2/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import "FUNAsset.h"

@implementation FUNAsset

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
}


- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}


@end
