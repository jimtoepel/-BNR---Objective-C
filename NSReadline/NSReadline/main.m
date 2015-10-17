//
//  main.m
//  NSReadline
//
//  Created by Jim Toepel on 10/16/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <readline/readline.h>
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // readline the text entered (Chapter 8)
        printf("What am I counting down from?");
        const char *name = readline(NULL);
        
        NSString *nameString = [NSString stringWithUTF8String:name];
        NSInteger numberInt = [nameString intValue];
        
        // convert that string to a number
//        int number = atoi(name);
        
        // confirm the text entered
        NSLog(@"Counting down from: %li\n", numberInt);
        
        
        
        // LOOP
        for (NSInteger i = numberInt; i > 0; i -= 3) {

            NSLog(@"%li\n", (long)i);
            
        }
        
        
    }
    return 0;
}
