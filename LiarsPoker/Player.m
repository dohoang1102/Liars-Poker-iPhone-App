//
//  Player.m
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/3/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import "Player.h"

@implementation Player

@synthesize name, numCards;

-(id) initWithNumCards: (uint8_t) nCards {
    return [self initWithNumCards: nCards Name: @"No name"];
}

-(id) initWithNumCards: (uint8_t) nCards Name: (NSString*) n {
    self = [super init];
    
    if (self) {
        numCards = nCards;
        name = n;
    }
    
    return self;
}

-(void) draw: (Deck*) deck {
    [hand addObject:[deck drawCard]];
}

-(void) lostCard {
    if (numCards > 0) {
        numCards--;
    }
}

-(void) clearHand
{
    [hand removeAllObjects];
}

-(BOOL) isEqual: (id) other {
    return [other isKindOfClass:[Player class]] && [name isEqualToString:((Player*) other).name];
}

-(NSString*) description {
    return [NSString stringWithFormat:@"%@: %@ cards", name, [hand count]];
}

-(void) dealloc
{
    [name release];
    
    [super dealloc];
}

@end
