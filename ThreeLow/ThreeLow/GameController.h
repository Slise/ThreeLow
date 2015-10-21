//
//  GameController.h
//  ThreeLow
//
//  Created by Benson Huynh on 2015-10-21.
//  Copyright © 2015 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

- (void)rollDices;
- (void)holdOrUnholdDice:(int)diceIndex;
- (void)printValues;
- (void)reset;

@end
