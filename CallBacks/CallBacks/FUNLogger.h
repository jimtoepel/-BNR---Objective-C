//
//  FUNLogger.h
//  CallBacks
//
//  Created by Jim Toepel on 11/30/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FUNLogger : NSObject <NSURLConnectionDelegate, NSURLConnectionDataDelegate>

{
    NSMutableData *_incomingData;
}

@property (nonatomic) NSDate  *lastTime;
- (NSString *)lastTimeString;
- (void)updateLastTime: (NSTimer *)t;


@end
