//
//  main.m
//  CallBacks
//
//  Created by Jim Toepel on 11/30/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FUNLogger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        FUNLogger *logger = [[FUNLogger alloc] init];
        
        NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                          target:logger
                                                        selector:@selector (updateLastTime:)
                                                        userInfo:nil
                                                         repeats:YES];
        
        
        [[NSRunLoop currentRunLoop] run];
        
    }
    return 0;
}
