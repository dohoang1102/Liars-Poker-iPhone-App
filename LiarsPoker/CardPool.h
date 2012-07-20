//
//  CardPool.h
//  LiarsPoker
//
//  Created by Edward Mitchell on 7/18/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hand.h"

@interface CardPool : NSMutableSet

-(BOOL) containsHand:(id<Hand>) hand;

@end
