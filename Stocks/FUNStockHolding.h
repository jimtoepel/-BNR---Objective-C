//
//  FUNStockHolding.h
//  Stocks
//
//  Created by Jim Toepel on 10/20/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FUNStockHolding : NSObject

{
    float   _purchaseSharePrice;
    float   _currentSharePrice;
    int     _numberOfShares;
}

-(float)costInDollars;
-(float)valueInDollars;
-(void)setNumberOfShares:(int)n;
-(void)setPurchaseSharePrice:(float)p;
-(void)setCurrentSharePrice:(float)c;

@end
