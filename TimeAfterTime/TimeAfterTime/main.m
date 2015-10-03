//
//  main.m
//  TimeAfterTime
//
//  Created by Jim Toepel on 10/2/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSDate *now = [NSDate date];
        NSLog(@"This NDate object lives at %p", now);
    }
    return 0;
}
