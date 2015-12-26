//
//  FUNOwnedAppliance.h
//  Appliances
//
//  Created by Jim Toepel on 12/24/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import "FUNAppliance.h"

@interface FUNOwnedAppliance : FUNAppliance
@property (readonly) NSSet *ownerNames;


// The designated initializer
-(instancetype)initWithProductName:(NSString *)pn
                    firstOwnerName:(NSString*)pn;
-(void)addOwnerName:(NSString *)n;
-(void)removeOwnerName:(NSString *)n;

@end
