//
//  HighCard.m
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/15/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import "HighCard.h"

@implementation HighCard

@synthesize highCard;

-(id) initWithHighCard:(Card *)hCard
{
    self = [super init];
    
    if (self)
    {
        highCard = hCard;
    }
    
    return self;
}

-(NSUInteger) count 
{
    return 1;
}

-(NSUInteger) hash
{
    return [highCard hash];
}

-(NSString*) description 
{
    return [NSString stringWithFormat:@"%@ high", [highCard getFaceValue]];
}

-(BOOL) isEqual: (id) other 
{
    return [other isKindOfClass:[HighCard class]] && 
        highCard.face == ((HighCard*) other).highCard.face;
}

-(void) dealloc
{
    [highCard release];
    
    [super dealloc];
}

@end
