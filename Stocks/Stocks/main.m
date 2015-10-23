//
//  main.m
//  Stocks
//
//  Created by Jim Toepel on 10/20/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FUNStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        FUNStockHolding *stock1 = [[FUNStockHolding alloc] init];
        [stock1 setNumberOfShares:40];
        [stock1 setPurchaseSharePrice:2.30];
        [stock1 setCurrentSharePrice:4.50];
        
        FUNStockHolding *stock2 = [[FUNStockHolding alloc] init];
        [stock2 setNumberOfShares:90] ;
        [stock2 setPurchaseSharePrice:12.89];
        [stock2 setCurrentSharePrice:10.56];

        FUNStockHolding *stock3 = [[FUNStockHolding alloc] init];
        [stock3 setNumberOfShares:210];
        [stock3 setPurchaseSharePrice:45.10];
        [stock3 setCurrentSharePrice:49.51];
        
        NSArray *portfolio = @[stock1, stock2, stock3];
        
        // Iterate over the array
        NSUInteger stockCount = [portfolio count];
        for (int i = 0 ; i < stockCount; i++) {
            float v = [portfolio[0] valueInDollars];
            NSLog(@"The stock is worth: %f\n", v);
        }
        
        
    }
    return 0;
}
