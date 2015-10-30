//
//  FUNEmployee.h
//  BMITime
//
//  Created by Jim Toepel on 10/30/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FUNPerson.h"

@interface FUNEmployee : FUNPerson

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;

-(double)yearsOfEmployment;

@end
