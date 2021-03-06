//
//  TwoPair.h
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/21/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hand.h"
#import "CreateHandProtocol.h"

@interface TwoPair : NSObject <Hand>
{
    id<CreateHandProtocol> createHandDelegate;
}

-(id) initWithLowCard:(Card*) lCard AndHighCard:(Card*) hCard;

@property (retain, readonly, nonatomic) Card* lowCard;
@property (retain, readonly, nonatomic) Card* highCard;

@end
