//
//  HighCard.h
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/15/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hand.h"

@interface HighCard : NSObject <Hand>

@property (retain, readonly, nonatomic) Card* highCard;

-(id) initWithHighCard: (Card*) hCard;

@end
