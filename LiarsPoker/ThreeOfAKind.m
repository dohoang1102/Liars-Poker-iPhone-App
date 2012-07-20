//
//  ThreeOfAKind.m
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/22/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import "ThreeOfAKind.h"

@implementation ThreeOfAKind

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
    return 3;
}

-(NSUInteger) hash
{
    return [lowCard hash] + 196;
}

-(NSString*) description 
{
    return [NSString stringWithFormat:@"Three %@S", [lowCard getFaceValue]];
}

-(BOOL) isEqual: (id) other 
{
    return [other isKindOfClass:[ThreeOfAKind class]] && 
        lowCard.face == ((ThreeOfAKind*) other).lowCard.face;
}

-(void) dealloc
{
    [lowCard release];
    
    [super dealloc];
}


@end
