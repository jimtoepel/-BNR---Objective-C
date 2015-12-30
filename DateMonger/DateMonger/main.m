//
//  main.m
//  DateMonger
//
//  Created by Jim Toepel on 12/28/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDate+DateConvienience.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDate *midnight = [NSDate fun_ezDateFromDay:18 month:2 andYear:1982];
        
        NSLog(@"the date is: %@", [midnight descriptionWithLocale:NSLocaleCalendar]);
        
        
    }
    return 0;
}
