//
//  Document.h
//  TahDoodle
//
//  Created by Jim Toepel on 12/19/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface FUNDocument : NSDocument


@property (nonatomic) NSMutableArray *tasks;
@property (nonatomic) IBOutlet NSTableView *taskTable;

- (IBAction)addTask:(id)sender;

@end

