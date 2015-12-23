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
    // Call the objects init method
    self = [super init];
    
    
    // Did it reutn non nil?
    if (self) {
        
        // Set the product name
        _productName = [pn copy];
        
        // provide a starting value
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
