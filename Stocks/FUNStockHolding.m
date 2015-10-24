//
//  FUNStockHolding.m
//  Stocks
//
//  Created by Jim Toepel on 10/20/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import "FUNStockHolding.h"

@implementation FUNStockHolding
@synthesize purchaseSharePrice;
@synthesize numberOfShares;
@synthesize currentSharePrice;


- (float) costInDollars {

    return purchaseSharePrice * numberOfShares;

}

-(float) valueInDollars {
    
    return currentSharePrice * numberOfShares;

}

@end
