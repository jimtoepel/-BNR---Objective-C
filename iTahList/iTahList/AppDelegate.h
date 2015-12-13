//
//  AppDelegate.h
//  iTahList
//
//  Created by Jim Toepel on 12/12/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic) NSMutableArray *tasks;

- (void)addTask:(id)sender;


@end

