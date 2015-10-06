//
//  main.m
//  computerName
//
//  Created by Jim Toepel on 10/5/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSHost *computer = [NSHost currentHost];
        NSString *computerName = [computer localizedName];
        
        NSLog(@"The name of this computer is: %@\n", computerName);
        
    }
    return 0;
}
