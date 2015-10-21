//
//  InputCollector.m
//  ThreeLow
//
//  Created by Benson Huynh on 2015-10-21.
//  Copyright © 2015 Benson Huynh. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString {
    
    NSLog(@"%@", promptString);
    
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    
    return [NSString stringWithCString:inputChars encoding:NSASCIIStringEncoding];
    
}


@end
