//
//  Card.m
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/1/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import "Card.h"

@implementation Card

@synthesize suit;
@synthesize face;


- (id) initWithSuit: (Suit) s AndFaceValue: (FaceValue) f {
    
    self = [super init];
    
    if (self) {
        suit = s;
        face = f;
    }
    
    return self;
    
}
 
-(id) initWithFaceValue: (FaceValue)f {
    return [self initWithSuit:NONE AndFaceValue:f];
}

-(NSString*) description {
    return [NSString stringWithFormat:@"%@ of %@", [self getFaceValue], [self getSuit]];
}

-(BOOL) isEqual: (id) other {
    
    return [other isKindOfClass:[Card class]] && 
        ((Card*) other).face == face && ((Card*) other).suit == suit;
}

-(NSString*) getSuit
{
    switch(suit)
    {
        case NONE :
            return @"NONE"; break;
        case SPADES :
            return @"SPADES"; break;
        case HEARTS :
            return @"HEARTS"; break;
        case DIAMONDS :
            return @"DIAMONDS"; break;
        case CLUBS :
            return @"CLUBS"; break;
    }
}

-(NSString*) getFaceValue
{
    switch(face)
    {
        case TWO :
            return @"TWO"; break;
        case THREE:
            return @"THREE"; break;
        case FOUR:
            return @"FOUR"; break;
        case FIVE:
            return @"FIVE"; break;
        case SIX:
            return @"SIX"; break;
        case SEVEN:
            return @"SEVEN"; break;
        case EIGHT:
            return @"EIGHT"; break;
        case NINE:
            return @"NINE"; break;
        case TEN:
            return @"TEN"; break;
        case JACK:
            return @"JACK"; break;
        case QUEEN:
            return @"QUEEN"; break;
        case KING:
            return @"KING"; break;
        case ACE :
            return @"ACE"; break;
    }
}

-(NSUInteger) hash {
    NSUInteger code = 0;
    
    switch(suit)
    {
        //case SPADES :
        //    break;
        case HEARTS :
            code += 13; break;
        case DIAMONDS :
            code += 26; break;
        case CLUBS :
            code += 39; break;
        default:
            break;
    }
    
    switch(face)
    {
        case TWO :
            code += 0; break;
        case THREE:
            code += 1; break;
        case FOUR:
            code += 2; break;
        case FIVE:
            code += 3; break;
        case SIX:
            code += 4; break;
        case SEVEN:
            code += 5; break;
        case EIGHT:
            code += 6; break;
        case NINE:
            code += 7; break;
        case TEN:
            code += 8; break;
        case JACK:
            code += 9; break;
        case QUEEN:
            code += 10; break;
        case KING:
            code += 11; break;
        case ACE :
            code += 12; break;
    }
    return code;

}


@end
