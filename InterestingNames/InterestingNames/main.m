//
//  main.m
//  InterestingNames
//
//  Created by Jim Toepel on 10/18/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // Read in a file as a huge string
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        
        NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        
        // Break it into an array of strings
        NSArray *namesArray = [nameString componentsSeparatedByString:@"\n"];
        NSArray *wordsArray = [wordString componentsSeparatedByString:@"\n"];
        
        
        NSMutableArray *namesAndWords = [NSMutableArray array];
        
        for (NSString *name in namesArray) {
            for (NSString *word in wordsArray) {
                if ([[name lowercaseString] compare:word] == NSOrderedSame) {

                
                }
            }
        }
        
        for (NSString *item in namesAndWords) {
            NSLog (@"%@", item);
        }
        NSLog(@"%lu proper names matching words.", [namesAndWords count]);
        
    }
    return 0;
}
