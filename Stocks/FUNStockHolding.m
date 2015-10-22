//
//  FUNStockHolding.m
//  Stocks
//
//  Created by Jim Toepel on 10/20/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import "FUNStockHolding.h"

@implementation FUNStockHolding

- (void) setCurrentSharePrice:(float)c {
    
    _currentSharePrice = c;
    
}


- (void) setPurchaseSharePrice:(float)p {
    
    _purchaseSharePrice = p;
    
}


- (void) setNumberOfShares:(int)n {
    
    _numberOfShares = n;
    
}


- (float) costInDollars {

    return _purchaseSharePrice * _numberOfShares;

}

-(float) valueInDollars {
    
    return _currentSharePrice * _numberOfShares;

}

@end
