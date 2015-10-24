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

        
        NSMutableArray *holdings = [[NSMutableArray alloc] init];
        
        FUNStockHolding *stock1 = [[FUNStockHolding alloc] init];
        stock1.numberOfShares = 40;
        stock1.purchaseSharePrice = 2.30;
        stock1.currentSharePrice = 4.50;
        [holdings addObject:stock1];
        
        FUNStockHolding *stock2 = [[FUNStockHolding alloc] init];
        stock2.numberOfShares = 90;
        stock2.purchaseSharePrice = 12.89;
        stock2.currentSharePrice = 10.56;
        [holdings addObject:stock2];
        
        FUNStockHolding *stock3 = [[FUNStockHolding alloc] init];
        stock3.numberOfShares = 210;
        stock3.purchaseSharePrice = 45.10;
        stock3.currentSharePrice = 49.51;
        [holdings addObject:stock3];
        
        // Iterate over the array
        for(FUNStockHolding *number in holdings) {
            NSLog(@"The stock is worth: %f\n", [number currentSharePrice]);

        }
        
        
    }
    return 0;
}
