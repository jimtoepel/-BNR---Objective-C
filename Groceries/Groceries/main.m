//
//  main.m
//  Groceries
//
//  Created by Jim Toepel on 10/18/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSMutableArray *groceryList = [NSMutableArray array];
        NSString *milk = @"Container of Milk";
        NSString *bread = @"Loaf of Bread";
        NSString *butter = @"Stick of Butter";
        
        [groceryList addObject:milk];
        [groceryList insertObject:bread atIndex:0];
        [groceryList addObject:butter];
        
        NSLog(@"The grocery list is:");
        
        for (NSString *d in groceryList) {
            NSLog(@"%@\n", d);
        }
        
    }
    return 0;
}
