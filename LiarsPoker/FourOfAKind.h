//
//  FourOfAKind.h
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/25/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hand.h"

@interface FourOfAKind : NSObject <Hand>

-(id) initWithLowCard:(Card*) lCard;

@property (retain, readonly, nonatomic) Card* lowCard;

@end
