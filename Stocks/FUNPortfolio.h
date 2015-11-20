//
//  FUNPortfolio.h
//  Stocks
//
//  Created by Jim Toepel on 11/5/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>
@class FUNStockHolding;

@interface FUNPortfolio : NSObject
{
    NSMutableArray *_portfolioStocks;
}

@property (nonatomic, copy) NSArray *portfolioStocks;

-(void)addStock:(FUNStockHolding *)a;
//-(void)removeStock:(FUNStockHolding *)a;

-(float) totalPortfolioValue;
-(void) displayPortfolio;
-(NSArray *) topHoldings;

@end
