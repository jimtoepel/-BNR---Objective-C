//
//  FUNObserver.h
//  CallBacks
//
//  Created by Jim Toepel on 12/28/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface FUNObserver : NSObject

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context;

@end
