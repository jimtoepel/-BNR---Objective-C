//
//  FUNAsset.h
//  BMITime
//
//  Created by Jim Toepel on 11/2/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>
@class FUNEmployee;

@interface FUNAsset : NSObject

@property (nonatomic, copy) NSString *label;
@property (nonatomic, weak) FUNEmployee *holder;
@property (nonatomic) unsigned int resaleValue;

@end
