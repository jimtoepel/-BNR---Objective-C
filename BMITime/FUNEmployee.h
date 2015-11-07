//
//  FUNEmployee.h
//  BMITime
//
//  Created by Jim Toepel on 10/30/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FUNPerson.h"
@class FUNAsset;

@interface FUNEmployee : FUNPerson
{
    NSMutableArray *_assets;
}


@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSArray *assets;

-(double)yearsOfEmployment;
-(void)addAsset:(FUNAsset *)a;
-(void)removeAsset:(FUNAsset *)a;
-(unsigned int)valueOfAssets;


@end
