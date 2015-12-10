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
        
        
        [[NSNotificationCenter defaultCenter] addObserverForName:NSSystemTimeZoneDidChangeNotification
                                                          object:nil
                                                           queue:nil usingBlock:^(NSNotification *changer) {
                                                            NSLog(@"The system time zone has changed");
                                                           }];
        
   /*
        [[NSNotificationCenter defaultCenter] addObserver:logger
                                                 selector:@selector(zoneChange:)
                                                     name:NSSystemTimeZoneDidChangeNotification
                                                   object:nil];
  */
        
        NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/cache/epub/205/pg205.txt"];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        
        
        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request
                                                                              delegate:logger
                                                                      startImmediately:YES];
        
        
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                          target:logger
                                                        selector:@selector (updateLastTime:)
                                                        userInfo:nil
                                                         repeats:YES];
        
        
        [[NSRunLoop currentRunLoop] run];
        
    }
    return 0;
}
