//
//  StraightFlush.h
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/25/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hand.h"
#import "CreateHandProtocol.h"

@interface StraightFlush : NSObject <Hand>
{
    id<CreateHandProtocol> createHandDelegate;
}

-(id) initWithHighCard: (Card*) hCard;

@property (retain, readonly, nonatomic) Card* highCard;

@end
