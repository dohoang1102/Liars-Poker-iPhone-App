//
//  ThreeOfAKind.h
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/22/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hand.h"

@interface ThreeOfAKind : NSObject <Hand>

@property (retain, readonly, nonatomic) Card* lowCard;

-(id) initWithLowCard: (Card*) lCard;

@end
