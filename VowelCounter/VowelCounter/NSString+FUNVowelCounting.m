//
//  FUNVowelCounting.m
//  VowelCounter
//
//  Created by Jim Toepel on 12/28/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import "NSString+FUNVowelCounting.h"

@implementation NSString (FUNVowelCounting)


-(int)fun_vowelCount
{
    
    NSCharacterSet *charSet = [NSCharacterSet characterSetWithCharactersInString:@"aeiouyAEIOUY"];
    
    NSUInteger count = [self length];
    int sum = 0;
    for (int i = 0; i < count; i++) {
        unichar c = [self characterAtIndex:i];
        if ([charSet characterIsMember:c]) {
            sum++;
        }
    }
    return sum;
}

@end
