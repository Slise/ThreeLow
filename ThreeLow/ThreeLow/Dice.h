//
//  Dice.h
//  ThreeLow
//
//  Created by Benson Huynh on 2015-10-21.
//  Copyright © 2015 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic) int currentValue;

- (void)getRandomNumber;

@end
