//
//  FUNPerson.m
//  BMITime
//
//  Created by Jim Toepel on 10/18/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import "FUNPerson.h"

@implementation FUNPerson

-(float)heightInMeters
{
    return _heightInMeters;
}

-(void)setHeightInMeters:(float)h
{
    _heightInMeters = h;
}

-(int)weightInKilos
{
    return _weightInKilos;
}

-(void)setWeightInKilos:(int)w
{
    _weightInKilos = w;
}

-(float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h*h);
}

@end
