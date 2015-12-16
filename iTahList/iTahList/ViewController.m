//
//  ViewController.m
//  iTahList
//
//  Created by Jim Toepel on 12/12/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - Set Up

- (void)loadView
{
    self.tasks = [NSMutableArray array];
    
    CGRect frame = [UIScreen mainScreen].bounds;
    MyView *backgroundView = [[MyView alloc] initWithFrame:frame];
    // Define frame rectangles
    CGRect tableFrame = CGRectMake(0, 80, frame.size.width,
                                   frame.size.height - 100);
    CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
    CGRect buttonFrame = CGRectMake(228, 40, 72, 31);
    
    // Table view
    self.taskTable = [[UITableView alloc] initWithFrame:tableFrame
                                                  style:UITableViewStylePlain];
    self.taskTable.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    // Tell table view which class to instantiate
    // whenever it needs to create a new cell
    [self.taskTable registerClass:[UITableViewCell class]
           forCellReuseIdentifier:@"Cell"];
    
    // Create Task field
    self.taskField = [[UITextField alloc] initWithFrame:fieldFrame];
    self.taskField.borderStyle = UITextBorderStyleRoundedRect;
    self.taskField.placeholder = @"Type a task, tap Insert";
    
    // Create the Button
    self.insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.insertButton.frame = buttonFrame;
    
    // Give button title
    [self.insertButton setTitle:@"Insert"
                       forState:UIControlStateNormal];
    
    // set target and action
    [self.insertButton addTarget:self
                          action:@selector(addTask:)
                forControlEvents:UIControlEventTouchUpInside];
    
    [backgroundView addSubview:self.taskTable];
    [backgroundView addSubview:self.taskField];
    [backgroundView addSubview:self.insertButton];
    
    self.view = backgroundView;
    
    self.taskTable.dataSource = self;
    
}


#pragma mark - Actions

- (void)addTask:(id)sender
{
    NSString *text = [self.taskField text];
    
    // Quit here if taskField is empty
    if ([text length] == 0) {
        return;
    }
    
    // Add it to the working array
    [self.tasks addObject:text];
    [self.taskTable reloadData];
    
    // Clear out the text field
    [self.taskField setText:@""];
    // Dismiss the keyboard
    [self.taskField resignFirstResponder];
}

#pragma mark - Table View Setup

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.tasks count];
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    UITableViewCell *c = [self.taskTable dequeueReusableCellWithIdentifier:@"Cell"];
    
    NSString *item = [self.tasks objectAtIndex:indexPath.row];
    c.textLabel.text = item;
    return c;
}

@end
