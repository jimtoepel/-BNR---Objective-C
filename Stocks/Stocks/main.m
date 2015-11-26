//
//  main.m
//  Stocks
//
//  Created by Jim Toepel on 10/20/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FUNStockHolding.h"
#import "FUNForeignStockHolding.h"
#import "FUNPortfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
        FUNPortfolio *holdings = [[FUNPortfolio alloc] init];
        
        FUNStockHolding *stock1 = [[FUNStockHolding alloc] init];
        stock1.numberOfShares = 40;
        stock1.purchaseSharePrice = 2.30;
        stock1.currentSharePrice = 4.50;
        stock1.symbol = @"AAAA";
        [holdings addStock:stock1];
        
        FUNStockHolding *stock2 = [[FUNStockHolding alloc] init];
        stock2.numberOfShares = 90;
        stock2.purchaseSharePrice = 12.89;
        stock2.currentSharePrice = 10.56;
        stock2.symbol = @"GOOG";
        [holdings addStock:stock2];
        
        FUNStockHolding *stock3 = [[FUNStockHolding alloc] init];
        stock3.numberOfShares = 210;
        stock3.purchaseSharePrice = 45.10;
        stock3.currentSharePrice = 49.51;
        stock3.symbol = @"AAPL";
        [holdings addStock:stock3];
        
        FUNForeignStockHolding *stock4 = [[FUNForeignStockHolding alloc] init];
        stock4.numberOfShares = 100;
        stock4.purchaseSharePrice = 25.00;
        stock4.currentSharePrice = 50.00;
        stock4.conversionRate = .75;
        stock4.symbol = @"DIS";
        [holdings addStock:stock4];
        
        // Iterate over the array
        [holdings displayPortfolio];
        NSLog (@"The stocks are worth:%.2F", [holdings totalPortfolioValue]) ;
        
        NSLog(@"The top three stocks are:");
        NSArray *topThreeholdings = [[NSArray alloc] init];
        topThreeholdings = [holdings topHoldings];
        
        for (FUNStockHolding *astock in topThreeholdings) {
            NSLog(@"Stock symbol:%@\tTotal Cost:$%.2f\tTotal Value:$%.2f", astock.symbol, astock.costInDollars, astock.valueInDollars);
        }
        
        NSLog(@"The stocks in alphabetical order are:");
        NSArray *alphaHoldings = [[NSArray alloc] init];
        alphaHoldings = [holdings portfolioByAlphabet];
        
        for (FUNStockHolding *astock in alphaHoldings) {
            NSLog(@"Stock symbol:%@\t", astock.symbol);
        }
        
        
    }
    return 0;
}
