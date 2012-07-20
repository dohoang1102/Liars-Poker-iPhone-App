//
//  CardPool.m
//  LiarsPoker
//
//  Created by Edward Mitchell on 7/18/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import "CardPool.h"
#import "HighCard.h"
#import "OnePair.h"
#import "TwoPair.h"
#import "ThreeOfAKind.h"
#import "Straight.h"
#import "Flush.h"
#import "FullHouse.h"
#import "FourOfAKind.h"
#import "StraightFlush.h"

@implementation CardPool

-(void) addObject:(Card*) aCard
{
    [self addObject:aCard];
}

-(BOOL) containsHand:(id<Hand>)hand
{
    if (hand != nil)
    {
        if ([hand isKindOfClass: [HighCard class]])
        {
            return [self containsHighCard:hand];
        }
        
        if ([hand isKindOfClass: [OnePair class]])
        {
            return [self containsOnePair:hand];
        }
        
        if ([hand isKindOfClass: [TwoPair class]])
        {
            return [self containsTwoPair:hand];
        }
        
        if ([hand isKindOfClass: [ThreeOfAKind class]])
        {
            return [self containsThreeOfAKind];
        }
        
        if ([hand isKindOfClass: [Straight class]])
        {
            return [self containsStraight];
        }
        
        if ([hand isKindOfClass: [Flush class]])
        {
            return [self containsFlush];
        }
        
        if ([hand isKindOfClass: [FullHouse class]])
        {
            return [self containsFullHouse];
        }
        
        if ([hand isKindOfClass: [FourOfAKind class]])
        {
            return [self containsFourOfAKind];
        }
        
        if ([hand isKindOfClass: [StraightFlush class]])
        {
            return [self containsStraightFlush];
        }
    }
    
    return false;
}

-(BOOL) containsHighCard: (HighCard*) hand
{
    for (Card* card in self)
    {
        if (card.face == hand.highCard.face)
        {
            return YES;
        }
    }
    
    return NO;
}

-(BOOL) containsOnePair: (OnePair*) hand
{
    NSUInteger count = 0;
    
    for (Card* card in self)
    {
        if (card.face == hand.lowCard.face)
        {
            count++;
        }
        
        if (count == 2)
        {
            return YES;
        }
    }
    
    return count == 2;
}

-(BOOL) containsTwoPair: (TwoPair*) hand
{
    NSUInteger count1 = 0;
    NSUInteger count2 = 0;
    
    for (Card* card in self)
    {
        if (card.face == hand.lowCard.face)
        {
            count1++;
        }
        
        if (card.face == hand.highCard.face)
        {
            count2++;
        }
        
        if (count1 == 2 && count2 == 2)
        {
            return YES;
        }
    }
    
    return count1 == 2 && count2 == 2;
}

-(BOOL) containsThreeOfAKind: (ThreeOfAKind*) hand
{
    NSUInteger count = 0;
    
    for (Card* card in self)
    {
        if (card.face == hand.lowCard.face)
        {
            count++;
        }
        
        if (count == 3)
        {
            return YES;
        }
    }
    
    return count == 3;
}

-(BOOL) containsStraight: (Straight*) hand
{
    NSUInteger count = 0;
    NSUInteger straightHighCardHash = [[[Card alloc] initWithFaceValue:hand.highCard.face] hash] % 13;
    
    for (Card* card in self)
    {
        NSUInteger cardHash = [card hash] % 13;
            
    }
    
    return YES;
}



@end
