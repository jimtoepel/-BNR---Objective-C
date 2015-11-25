//
//  FUNPortfolio.m
//  Stocks
//
//  Created by Jim Toepel on 11/5/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import "FUNPortfolio.h"
#import "FUNStockHolding.h"


@implementation FUNPortfolio

- (NSArray *)portfolioStocks
{
    return [_portfolioStocks copy];
}



- (void)addStock:(FUNStockHolding *)a
{
    // is StocksNill?
    if (!_portfolioStocks) {
        
        // create the array
        _portfolioStocks = [[NSMutableArray alloc] init];
        
    }
    [_portfolioStocks addObject:a];
}


-(void)displayPortfolio
{
    for (FUNStockHolding *a in _portfolioStocks){
        NSLog(@"Symbol %@:%.2f", [a symbol], [a valueInDollars]);
    }
}


-(float)totalPortfolioValue
{
    float sum = 0;
    for (FUNStockHolding *a in _portfolioStocks){
        sum += [a valueInDollars];
    }
    return sum;
}

-(NSArray*)topHoldings
{
    NSMutableArray *topThreeHoldings = [_portfolioStocks mutableCopy];
    // vid value in dollars
    NSSortDescriptor *vid = [NSSortDescriptor sortDescriptorWithKey:@"valueInDollars"
                                                          ascending:NO];
    [topThreeHoldings sortUsingDescriptors:@[vid]];
    // array of first three
    NSIndexSet *topThree = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, 3)];
    return [topThreeHoldings objectsAtIndexes:topThree];
    
}

-(NSArray *) portfolioByAlphabet
{
    NSMutableArray *anAlphabeticalArray = [_portfolioStocks mutableCopy];
    // sortAlpha to sort alphabetically
    NSSortDescriptor *sortAlpha = [NSSortDescriptor sortDescriptorWithKey:@"symbol"
                                                                ascending:YES];
    [anAlphabeticalArray sortUsingDescriptors:@[sortAlpha]];
    return anAlphabeticalArray;
}

@end
