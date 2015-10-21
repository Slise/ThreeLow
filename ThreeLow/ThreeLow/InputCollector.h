//
//  InputCollector.h
//  ThreeLow
//
//  Created by Benson Huynh on 2015-10-21.
//  Copyright © 2015 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject



@property (strong, nonatomic) NSString *userInput;

-(NSString *)inputForPrompt:(NSString *)promptString;

@end
