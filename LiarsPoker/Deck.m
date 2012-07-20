//
//  Deck.m
//  LiarsPoker
//
//  Created by Edward Mitchell on 7/6/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import "Deck.h"
#import "Node.h"

@implementation Deck

-(id) init
{
    self = [super init];
    
    if (self)
    {
        deck = [[NSMutableArray alloc] init];
        [self addCards];
        [self flusshle];
        
    }
    
    return self;
}

-(NSUInteger) addCards
{
    NSUInteger count = 0;
    for (int i = 1; i <= 4; i++)
    {
        for (int j = 1; j <= 13; j++)
        {
            Card* card = [[Card alloc] initWithSuit:(Suit)i AndFaceValue:(FaceValue)j];
            [deck addObject:card];
            count++;
        }
    }
    
    return count;
}

-(Card*) drawCard
{
    Card* drawnCard = [deck objectAtIndex:0];
    [deck removeObjectAtIndex:0];
    return drawnCard;
}

-(void) flusshle
{
    static BOOL seeded = NO;
    
    if (!seeded)
    {
        srandom(time(NULL));
        seeded = YES;
    }
    
    for (int i = 0; i < 52; i++)
    {
        int nElementsRemaining = 52 - i;
        int exchangingIndex = (random() % nElementsRemaining) + i;
        [deck exchangeObjectAtIndex:i withObjectAtIndex:exchangingIndex];
    }
}

-(NSString*) description
{
    return [deck description];
}

@end
