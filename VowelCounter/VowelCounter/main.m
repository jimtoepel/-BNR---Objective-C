//
//  main.m
//  VowelCounter
//
//  Created by Jim Toepel on 12/28/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+FUNVowelCounting.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *string = @"Hello, World!";
        NSLog(@"%@ has %d vowels", string, [string fun_vowelCount]);
        
    }
    return 0;
}
