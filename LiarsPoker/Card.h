//
//  Card.h
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/1/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    NONE = 0,
    SPADES,
    HEARTS,
    DIAMONDS,
    CLUBS	
} Suit;

typedef enum {
    TWO = 0,
    THREE,
    FOUR,
    FIVE,
    SIX,
    SEVEN,
    EIGHT,
    NINE,
    TEN,
    JACK,
    QUEEN,
    KING,
    ACE
} FaceValue;


@interface Card : NSObject

@property (assign, readonly, nonatomic) Suit suit;
@property (assign, readonly, nonatomic) FaceValue face;

-(id) initWithSuit: (Suit) s AndFaceValue: (FaceValue) f;
-(id) initWithFaceValue: (FaceValue) f;
-(NSString*) getSuit;
-(NSString*) getFaceValue;

@end
