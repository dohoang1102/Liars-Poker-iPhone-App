//
//  TwoPair.m
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/21/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import "TwoPair.h"

@implementation TwoPair

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
    else {
        [createHandDelegate createHandDidFail:@"Two Pair must have different two different facevalues"];
        return nil;
    }
}

-(NSUInteger) count
{
    return 4;
}

-(NSUInteger) hash
{
    return ([highCard hash] * 13 + [lowCard hash]) + 27;
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"Two Pair: %@S and %@S", [highCard getFaceValue], [lowCard getFaceValue]];
}

-(BOOL) isEqual: (id) other
{
    return [other isKindOfClass:[TwoPair class]] && 
    lowCard.face == ((TwoPair*) other).lowCard.face && 
    highCard.face == ((TwoPair*) other).highCard.face;
}

-(void) dealloc
{
    [lowCard release];
    [highCard release];
    
    [super dealloc];
}

@end
