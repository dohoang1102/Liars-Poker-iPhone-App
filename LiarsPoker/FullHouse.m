//
//  FullHouse.m
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/22/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import "FullHouse.h"

@implementation FullHouse

@synthesize lowCard, highCard;

-(id) initWithLowCard:(Card *)lCard AndHighCard:(Card *)hCard 
{
    if (lCard.face == hCard.face)
    {
    
    self = [super init];
    
    if (self)
    {
        lowCard = lCard;
        highCard = hCard;
    }
    
    return self;
    }
    else
    {
        [createHandDelegate createHandDidFail:@"Full Houses cannot have the same face for it's high and low card."];
        return nil;
    }
}

-(NSUInteger) count
{
    return 5;
}

-(NSUInteger) hash
{
    return ([highCard hash] * 13 + [lowCard hash]) + 234;
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"Full House: %@S over %@S", [highCard getFaceValue], [lowCard getFaceValue]];
}

-(BOOL) isEqual: (id) other
{
    return [other isKindOfClass:[FullHouse class]] && 
    lowCard.face == ((FullHouse*) other).lowCard.face && 
    highCard.face == ((FullHouse*) other).highCard.face;
}

-(void) dealloc
{
    [lowCard release];
    [highCard release];
    
    [super dealloc];
}


@end
