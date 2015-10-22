//
//  GameController.m
//  ThreeLow
//
//  Created by Benson Huynh on 2015-10-21.
//  Copyright © 2015 Benson Huynh. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@interface GameController ()

@property (strong, nonatomic) NSMutableArray *diceAvailable;
@property (strong, nonatomic) NSMutableSet *heldDice;

@end

@implementation GameController

- (instancetype)init {
    self = [super init];
    if (self) {
        _diceAvailable = [NSMutableArray array];
        _heldDice = [NSMutableSet set];
        
        [self initializeDices];
    }
    return self;
}

- (void)initializeDices {
    for (int i = 0; i < 5; i++) {
        [self.diceAvailable addObject:[[Dice alloc] init]];
    }
}

- (void)rollDices {
    for (Dice *dice in self.diceAvailable) {
        if (![self.heldDice containsObject:dice]) {
            [dice getRandomNumber];
        }
    }
}

- (void)holdOrUnholdDice:(int)diceIndex {
    Dice *dice = self.diceAvailable[diceIndex];
    if ([self.heldDice containsObject:dice]) {
        [self.heldDice removeObject:dice];
        NSLog(@"Dice %d unheld", diceIndex);
    } else {
        [self.heldDice addObject:dice];
        NSLog(@"Dice %d held", diceIndex);
    }
}

- (void)reset {
    [self.heldDice removeAllObjects];
    [self rollDices];
}
    

- (void)printValues {
    for (int i = 0; i < self.diceAvailable.count; i++) {
        Dice *currentDice = self.diceAvailable[i];
        if ([self.heldDice containsObject:currentDice]) {
            NSLog(@"[Dice #%d held %d]", i, currentDice.currentValue);
        } else {
            NSLog(@"Dice #%d rolled %d", i, currentDice.currentValue);
        }
    }
}

- (void)score {
    int score = 0;
    
    for (Dice *dice in self.diceAvailable) {
        score = score + dice.currentValue;
    }
    NSLog(@"current score: %d", score);
}


@end
