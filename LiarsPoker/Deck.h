//
//  Deck.h
//  LiarsPoker
//
//  Created by Edward Mitchell on 7/6/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import "LinkedStack.h"

@interface Deck : NSObject
{
    NSMutableArray* deck;
}

-(id) init;
-(NSUInteger) addCards;
-(Card*) drawCard;
-(void) flusshle;

@end	
