//
//  main.m
//  VowelMovement
//
//  Created by Jim Toepel on 12/4/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ArrayEnumerationBlock) (id, NSUInteger, BOOL *);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create an array of strings and a contrainer for devowelized ones
        NSArray *originalStrings = @[@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi"];
        
        NSLog(@"original strings: %@", originalStrings);
        
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        
        // Create a list of character to be removed from the string
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
        
        
        // Iterate over hte array with your block
        [originalStrings enumerateObjectsUsingBlock:^(id string, NSUInteger i, BOOL *stop) {
            
            NSRange yRange = [ string rangeOfString:@"y"
                                            options:NSCaseInsensitiveSearch];
            
            // Did I find a y?
            if (yRange.location != NSNotFound) {
                *stop = YES;    // Prevent further iterations
                return;         // End this iteration
            }
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            // Iterate over the array of vowels, replacing occurences of each
            // With an empty string(nothing)
            
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
            }
            [devowelizedStrings addObject:newString];
        } // End of Block assignment
         
         
        ];
        NSLog(@"devowelized strings: %@", devowelizedStrings);
        
    }
    return 0;
}
