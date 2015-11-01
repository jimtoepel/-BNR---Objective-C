//
//  FUNForeignStockHolding.m
//  Stocks
//
//  Created by Jim Toepel on 11/1/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import "FUNForeignStockHolding.h"

@implementation FUNForeignStockHolding
@synthesize conversionRate;


- (float) costInDollars {

    return self.purchaseSharePrice * self.numberOfShares * conversionRate;

}



- (float) valueInDollars {
    
    return self.currentSharePrice * self.numberOfShares * conversionRate;

}


@end
