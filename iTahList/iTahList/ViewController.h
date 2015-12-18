//
//  ViewController.h
//  iTahList
//
//  Created by Jim Toepel on 12/12/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource>

@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton *insertButton;

@property (nonatomic) NSMutableArray *tasks;


- (void)addTask:(id)sender;
- (NSArray *)readTasks;
- (void)writeTasks:(NSArray*)newTasks;

@end

