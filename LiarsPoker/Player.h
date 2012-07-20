//
//  Player.h
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/3/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedStack.h"
#import "Deck.h"

@interface Player : NSObject
{
    NSMutableArray* hand;
}

@property (copy, nonatomic) NSString* name;
@property (assign, readonly, nonatomic) NSUInteger numCards;

-(id) initWithNumCards: (uint8_t) nCards;
-(id) initWithNumCards: (uint8_t) nCards Name: (NSString*) n;

-(void) draw: (Deck*) deck;
-(void) lostCard;
-(void) clearHand;

@end

