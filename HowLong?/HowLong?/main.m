//
//  main.m
//  HowLong?
//
//  Created by Jim Toepel on 10/10/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"The date today is: %@\n", now);
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1982];
        [comps setMonth:2];
        [comps setDay:18];
        [comps setHour:13];
        [comps setMinute:34];
        [comps setSecond:0];
        NSLog(@"I was born at: %@\n", comps);
        NSLog(@"And have been alive for: \n");
    }
    return 0;
}
