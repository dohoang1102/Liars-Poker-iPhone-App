//
//  OnePair.m
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/18/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import "OnePair.h"

@implementation OnePair

@synthesize lowCard;

-(id) initWithLowCard:(Card *)lCard
{
    self = [super init];
    
    if (self) 
    {
        lowCard = lCard;
    }
    
    return self;
}

-(NSUInteger) count 
{
    return 1;
}

-(NSUInteger) hash
{
    return [lowCard hash] + 14;
}

-(NSString*) description 
{
    return [NSString stringWithFormat:@"Pair of %@S", [lowCard getFaceValue]];
}

-(BOOL) isEqual: (id) other 
{
    return [other isKindOfClass:[OnePair class]] && 
        lowCard.face == ((OnePair*) other).lowCard.face;
}

-(void) dealloc
{
    [lowCard release];
    
    [super dealloc];
}

@end
