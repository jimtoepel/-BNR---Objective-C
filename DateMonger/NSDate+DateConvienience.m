//
//  DateConvienience.m
//  DateMonger
//
//  Created by Jim Toepel on 12/28/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import "NSDate+DateConvienience.h"

@implementation NSDate (DateConvienience)

+ (NSDate *)fun_ezDateFromDay:(int)d
                        month:(int)m
                      andYear:(int)y
{
    NSDateComponents *tempDatePieces = [[NSDateComponents alloc] init];
    [tempDatePieces setYear:y];
    [tempDatePieces setMonth:m];
    [tempDatePieces setDay:d];
    [tempDatePieces setHour:0];
    [tempDatePieces setMinute:0];
    [tempDatePieces setSecond:0];
    
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    NSDate *tempDate = [calendar dateFromComponents:tempDatePieces];
    
    return tempDate;
}

@end
