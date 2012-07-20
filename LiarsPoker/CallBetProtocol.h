//
//  CallBetProtocol.h
//  LiarsPoker
//
//  Created by Edward Mitchell on 7/7/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CallBetProtocol <NSObject>

-(void) callBetDidCompleteWithBetInPool: (BOOL) wasBetInPool;
-(void) callBetDidFail:(NSString*) message;

@end
