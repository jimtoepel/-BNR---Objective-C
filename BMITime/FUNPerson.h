//
//  FUNPerson.h
//  BMITime
//
//  Created by Jim Toepel on 10/18/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FUNPerson : NSObject

@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;


// FUNPerson has a built in method that calculated BMI

-(float)bodyMassIndex;



@end
