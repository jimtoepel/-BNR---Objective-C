//
//  FUNAppliance.h
//  Appliances
//
//  Created by Jim Toepel on 12/20/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FUNAppliance : NSObject

{
    NSString *_productName;
}

//@property (nonatomic, copy) NSString *productName;
@property (nonatomic) int voltage;

// The designated initialier
- (instancetype)initWithProductName:(NSString *)pn;

@end
