//
//  FUNAppliance.m
//  Appliances
//
//  Created by Jim Toepel on 12/20/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import "FUNAppliance.h"

@implementation FUNAppliance

- (instancetype)init
{
    return [self initWithProductName:@"Unknown"];
}


- (instancetype)initWithProductName:(NSString *)pn
{
    if (self = [super init]) {
        
        _productName = [pn copy];
        _voltage = 120;
    }
    
    // rturn a pointer to the new object
    return self;
}

- (NSString *) description
{
    return [NSString stringWithFormat:@"<%@: %d volts>", self.productName, self.voltage];
}


@end
