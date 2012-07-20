//
//  StraightFlush.m
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/25/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import "StraightFlush.h"

@implementation StraightFlush

@synthesize highCard;

-(id) initWithHighCard:(Card *)hCard 
{
    if ([hCard hash] - 1 % 13 >= 4)
    {
        if (hCard.suit != NONE)
        {
            self = [super init];
            
            if (self)
            {
                highCard = hCard;
            }
            
            return self;
        }
        else {
            [createHandDelegate createHandDidFail:@"A Straight Flush's suit cannot be NONE"];
            return nil;
        }
    }
    else {
        [createHandDelegate createHandDidFail:@"A Straight Flush's high card cannot have a facevalue of 2-5"];
        return nil;
    }
}

-(NSUInteger) count 
{
    return 5;
}

-(NSUInteger) hash
{
    return [highCard hash] + 416;
}

-(NSString*) description 
{
    if (highCard.face == TEN)
    {
        return [NSString stringWithFormat:@"Royal Flush of %@", [highCard getSuit]];
    }
    else {
        return [NSString stringWithFormat:@"Straight Flush of %@, %@ high", [highCard getSuit], [highCard getFaceValue]];
    }
}

-(BOOL) isEqual: (id) other 
{
    return [other isKindOfClass:[StraightFlush class]] && 
    highCard.face == ((StraightFlush*) other).highCard.face;
}

-(void) dealloc
{
    [highCard release];
    
    [super dealloc];
}


@end
