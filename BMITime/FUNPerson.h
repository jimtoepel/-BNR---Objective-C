//
//  FUNPerson.h
//  BMITime
//
//  Created by Jim Toepel on 10/18/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FUNPerson : NSObject

{
    // FUNPerson had two instance variables
    float _heightInMeters;
    int _weightInKilos;
    
}

// FUNPerson had methods to read and set its instance variables

-(float)heightInMeters;
-(void)setHeightInMeters:(float)h;
-(int)weightInKilos;
-(void)setWeightInKilos:(int)w;

// FUNPerson has a built in method that calculated BMI

-(float)bodyMassIndex;



@end
