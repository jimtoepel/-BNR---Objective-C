//
//  FUNStockHolding.h
//  Stocks
//
//  Created by Jim Toepel on 10/20/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FUNStockHolding : NSObject

@property (nonatomic) float purchaseSharePrice;
@property (nonatomic) float currentSharePrice;
@property (nonatomic) int numberOfShares;
@property (nonatomic) NSString *symbol;

-(float)costInDollars;
-(float)valueInDollars;

@end
