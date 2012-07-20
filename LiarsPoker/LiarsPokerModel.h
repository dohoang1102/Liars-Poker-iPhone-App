//
//  LiarsPokerModel.h
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/25/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedStack.h"
#import "Hand.h"
#import "PlaceBetProtocol.h"
#import "CallBetProtocol.h"
#import "NewGameProtocol.h"
#import "Hand.h"

@interface LiarsPokerModel : NSObject
{
    NSMutableArray* pool;
    BOOL isGameOver;
    
    id<PlaceBetProtocol> placeBetDelegate;
    id<CallBetProtocol> callBetDelegate;
    id<NewGameProtocol> newGameDelegate;
}

@property (retain, readonly, nonatomic) LinkedStack* previousBets;
@property (retain, readonly, nonatomic) NSMutableArray* players;
@property (assign, readonly, nonatomic) NSUInteger previousPlayer;
@property (assign, readonly, nonatomic) NSUInteger currentPlayer;

-(id) initWithNumPlayers:(NSUInteger) nPlayers AndNumCardsPerPlayer:(NSUInteger) nCards;
-(void) newTurn;
-(void) placeBet: (id<Hand>) hand;
-(void) call;

@end
