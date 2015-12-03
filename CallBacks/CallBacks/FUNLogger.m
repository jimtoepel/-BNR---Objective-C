//
//  FUNLogger.m
//  CallBacks
//
//  Created by Jim Toepel on 11/30/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import "FUNLogger.h"
@interface FUNLogger ()
- (void)zoneChange:(NSNotification *)note;
@end

@implementation FUNLogger

- (void)zoneChange:(NSNotification *)note
{
    NSLog(@"The system time zone has changed");
}

- (NSString *)lastTimeString
{
    static NSDateFormatter *dateFormatter = nil;
    if (!dateFormatter)
    {
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"created dateFormatter");
    }
    return [dateFormatter stringFromDate:self.lastTime];
}


- (void)updateLastTime:(NSTimer *)t
{
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@", self.lastTimeString);
}


// Called each time a chunk of data arrives
- (void) connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"recieved %lu bytes", [data length]);
    
    // Create a mutable data if it does not already exist
    if (!_incomingData) {
        _incomingData = [[NSMutableData alloc] init];
    }
    
    [_incomingData appendData:data];
}


// Called when the last chunk is processed
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it All");
    NSString *string = [[NSString alloc] initWithData:_incomingData
                                             encoding:NSUTF8StringEncoding];
    _incomingData = nil;
    NSLog(@"string has %lu characters", [string length]);
    
    // Uncomment the next line to see the entire fetched file
    // NSLog(@"The whole string is %@", string);
    
}


// Called if the fetch fails
-(void) connectionDidFinishLoading:(NSURLConnection *)connection
                  didFailWithError:(NSError *)error
{
    NSLog(@"connection failed: %@", [error localizedDescription]);
    _incomingData = nil;
}
@end
