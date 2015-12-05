//
//  main.m
//  VowelMovement
//
//  Created by Jim Toepel on 12/4/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create an array of strings and a contrainer for devowelized ones
        NSArray *originalStrings = @[@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi"];
        
        NSLog(@"original strings: %@", originalStrings);
        
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        
        // Create a list of character to be removed from the string
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
        
    }
    return 0;
}
