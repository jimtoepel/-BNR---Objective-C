//
//  FUNOwnedAppliance.m
//  Appliances
//
//  Created by Jim Toepel on 12/24/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import "FUNOwnedAppliance.h"

@interface FUNOwnedAppliance ()
{
    NSMutableSet  *_ownerNames;
}

@end

@implementation FUNOwnedAppliance

- (instancetype)initWithProductName:(NSString *)pn
                     firstOwnerName:(NSString*)n
{
    // CAll the superclass's init
    if (self = [super initWithProductName:pn]) {
        
        // Create a set to hold owners names
        _ownerNames = [[NSMutableSet alloc] init];
    
    // Is the first owner name non-nil?
    
        if (n) {
            [_ownerNames addObject:n];
        }
    
    }
    // Return a pointer to the new object
    return self;
}

- (void)addOwnerName:(NSString *)n
{
    [_ownerNames addObject:n];
}

- (void)removeOwnerName:(NSString *)n
{
    [_ownerNames removeObject:n];
}

-(NSSet *)ownerNames
{
    return [_ownerNames copy];
}

@end
