//
//  Flush.m
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/22/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import "Flush.h"

@implementation Flush

@synthesize lowCard;

-(id) initWithLowCard:(Card *)lCard
{
    if (([lCard hash] - 1) % 13 <= 7)
    {
        
        if (lCard.suit != NONE)
        {
            self = [super init];
    
            if (self)
            {
                lowCard = lCard;
            }
            
            return self;
        }
        else {
            [createHandDelegate createHandDidFail:@"A flush's suit cannot be NONE"];
            return nil;
        }
    }
    else {
        [createHandDelegate createHandDidFail:@"The low card of the flush's face cannot be greater than 9."];
        return nil;
    }
}

-(NSUInteger) count 
{
    return 5;
}

-(NSUInteger) hash
{
    return [lowCard hash] + 221;
}

-(NSString*) description 
{
    return [NSString stringWithFormat:@"Flush of %@, %@ low", [lowCard getSuit], [lowCard getFaceValue]];
}

-(BOOL) isEqual: (id) other 
{
    return [other isKindOfClass:[Flush class]] && 
        lowCard.face == ((Flush*) other).lowCard.face;
}

-(void) dealloc
{
    [lowCard release];
    
    [super dealloc];
}


@end
