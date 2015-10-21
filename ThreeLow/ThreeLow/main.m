//
//  main.m
//  ThreeLow
//
//  Created by Benson Huynh on 2015-10-21.
//  Copyright © 2015 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputCollector.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        GameController *gameController =[[GameController alloc] init];
        InputCollector *userInput = [[InputCollector alloc] init];
      
        while (YES) {
            NSString* input = [userInput inputForPrompt:@"select an option: quit or play"];
            if ([input isEqualToString: @"quit\n"]) {
                NSLog(@"Thanks for playing!");
                break;
            } else if ([input isEqualToString:@"play\n"]) {
                [gameController rollDices];
                [gameController printValues];
                
                while (YES) {
                    NSString *prompt = @"\nroll - continue play\ndice index - hold or unhold dice\nquit - exit game\n";
                    
                    NSString* innerInput = [userInput inputForPrompt:prompt];
                    
                    if ([innerInput isEqualToString:@"roll\n"]) {
                        [gameController rollDices];
                        [gameController printValues];
                    } else if ([innerInput isEqualToString:@"quit\n"]) {
                        break;
                    } else {
                        [gameController holdOrUnholdDice:innerInput.intValue];
                    }
                }
            }
        }
    }
    
    return 0;
}

