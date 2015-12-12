//
//  main.m
//  Propertease
//
//  Created by Jim Toepel on 12/12/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *mediaItems = [[NSMutableArray alloc] init];
        NSMutableDictionary *mediaItem;
        
        mediaItem = [NSMutableDictionary dictionary];
        [mediaItem setObject:@"Fallout 4"
                      forKey:@"title"];
        [mediaItem setObject:[NSNumber numberWithInt:90]
                      forKey:@"metacritic"];
        [mediaItem setObject:[NSNumber numberWithFloat:40.5]
                      forKey:@"hours played"];
        [mediaItem setObject:[NSNumber numberWithBool:NO]
                      forKey:@"finished"];
        [mediaItem setObject:[NSArray arrayWithObjects:@"fallout 3", @"skyrim", nil]
                      forKey:@"relatedTitles"];
        [mediaItem setObject:[NSData dataWithContentsOfFile:@"/tmp/stocks.plist"]
                      forKey:@"description"];
        [mediaItem setObject:[NSDate date]
                      forKey:@"purchased"];
        [mediaItem setObject:[NSMutableDictionary dictionary]
                      forKey:@"tags"];
        
        [mediaItems addObject:mediaItem];
        
        [mediaItems writeToFile:@"/tmp/medias.plist"
                     atomically:YES];
        
        
    }
    return 0;
}
