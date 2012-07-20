//
//  FourOfAKind.m
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/25/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import "FourOfAKind.h"

@implementation FourOfAKind

@synthesize lowCard;

-(id) initWithLowCard:(Card*) lCard
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
    return 4;
}

-(NSUInteger) hash
{
    return [lowCard hash] + 403;
}

-(NSString*) description 
{
    return [NSString stringWithFormat:@"Four %@S", [lowCard getFaceValue]];
}

-(BOOL) isEqual: (id) other 
{
    return [other isKindOfClass:[FourOfAKind class]] && 
    lowCard.face == ((FourOfAKind*) other).lowCard.face;
}

-(void) dealloc
{
    [lowCard release];
    
    [super dealloc];
}


@end
