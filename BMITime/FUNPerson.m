//
//  FUNPerson.m
//  BMITime
//
//  Created by Jim Toepel on 10/18/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import "FUNPerson.h"

@implementation FUNPerson


-(float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h*h);
}

@end
