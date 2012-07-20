//
//  LinkedStack.h
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/15/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Stack.h"

@interface LinkedStack : NSObject
    <Stack, NSFastEnumeration>

@property (retain, readonly, nonatomic) Node* topOfStack;

@end
