//
//  Flush.h
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/22/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hand.h"
#import "CreateHandProtocol.h"

@interface Flush : NSObject <Hand>
{
    id<CreateHandProtocol> createHandDelegate;
}

-(id) initWithLowCard: (Card*) lCard;

@property (retain, readonly, nonatomic) Card* lowCard;

@end
