//
//  LiarsPokerModel.m
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/25/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import "LiarsPokerModel.h"
#import "Player.h"
#import "Card.h"
#import "Deck.h"

@implementation LiarsPokerModel

@synthesize players, previousBets;
@synthesize previousPlayer, currentPlayer;

-(id) initWithNumPlayers:(NSUInteger) nPlayers AndNumCardsPerPlayer:(NSUInteger) nCards
{
    if (nPlayers > 0 && nCards > 0)
    {
        if (nPlayers * nCards > 52)
        {
            
            self = [super init];
            
            if (self)
            {
                players = [[NSMutableArray alloc] initWithCapacity:nPlayers];
                
                for (int i = 0; i < nPlayers; i++) {
                    Player* player = [[Player alloc] initWithNumCards:nCards];
                    player.name = [NSString stringWithFormat:@"Player %d", i];
                    [players addObject: player];
                }
                
                currentPlayer = 0;
                previousPlayer = nPlayers - 1;
                
            }
            
            return self;
        }
        else {
            [newGameDelegate startNewGameDidFail:@"Too many cards per player, number of total cards cannot be greater than 52."];
            return nil;
        }
    }
    else 
    {
        [newGameDelegate startNewGameDidFail:@"Number of players and number of cards per player must be greater than 0."];
        return nil;
    }
}

-(void) newTurn
{
    if (!isGameOver) {
        Deck* deck = [[Deck alloc] init];
        [pool removeAllObjects];
        
        for (Player* player in players)
        {
            [player clearHand];
            
            for (int i = 0; i < player.numCards; i++)
            {
                [player draw:deck];
            }
        }
        
    }
}

-(void) placeBet:(id<Hand>)hand
{
    if (![previousBets isEmpty] && [hand hash] < [[previousBets top] hash])
    {
        [placeBetDelegate placeBetDiDFail:@"Bet must be greater than previous bet."];
    }
    else 
    {
        [previousBets push:hand];
        previousPlayer = currentPlayer;
        currentPlayer = [self incrementPlayer: currentPlayer];
        [placeBetDelegate placeBetDidComplete];
    }
}

-(void) call
{
    if ([previousBets isEmpty])
    {
        [callBetDelegate callBetDidFail:@"Previous bet cannot be called until one has been made."];
    }
    else
    {
        id<Hand> lastBet = [previousBets top];
        
        if ([pool containsObject:lastBet])
        {
            Player* player = [players objectAtIndex:currentPlayer];
            [player lostCard];
            [callBetDelegate callBetDidCompleteWithBetInPool: YES];
        }
        else {
            Player* player = [players objectAtIndex:previousPlayer];
            [player lostCard];
            [callBetDelegate callBetDidCompleteWithBetInPool: NO];
        }
    }
}

-(NSUInteger) incrementPlayer: (NSUInteger) player
{
    NSUInteger nextPlayerIndex = (player + 1) % [players count];
    Player* nextPlayer = [players objectAtIndex:nextPlayerIndex];
    if (nextPlayer.numCards != 0)
    {
        return nextPlayerIndex;
    }
    else {
        return [self incrementPlayer:nextPlayerIndex];
    }
}

-(void) dealloc
{
    [previousBets release];
    [players release];
    
    [super dealloc];
}



@end
