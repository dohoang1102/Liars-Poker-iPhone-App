//
//  Straight.m
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/22/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import "Straight.h"

@implementation Straight

@synthesize highCard;

-(id) initWithHighCard:(Card *)hCard
{
    if (([hCard hash] - 1) % 13 < 4)
    {
        self = [super init];
        
        if (self)
        {
            highCard = hCard;
        }
        
        return self;
    }
    else {
        [createHandDelegate createHandDidFail:@"A Straight's high card cannot have a Facevalue of 2-5."];
        return nil;
    }
}

-(NSUInteger) count 
{
    return 5;
}

-(NSUInteger) hash
{
    return [highCard hash] + 209;
}

-(NSString*) description 
{
    return [NSString stringWithFormat:@"Straight, %@ high", [highCard getFaceValue]];
}

-(BOOL) isEqual: (id) other 
{
    return [other isKindOfClass:[Straight class]] && 
    highCard.face == ((Straight*) other).highCard.face;
}

-(void) dealloc
{
    [highCard release];
    
    [super dealloc];
}


@end
