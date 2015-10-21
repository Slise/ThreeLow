//
//  Dice.m
//  ThreeLow
//
//  Created by Benson Huynh on 2015-10-21.
//  Copyright © 2015 Benson Huynh. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (void)getRandomNumber {
    self.currentValue = (arc4random() % 5) + 1;
}


@end
