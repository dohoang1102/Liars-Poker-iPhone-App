//
//  PlaceBetProtocol.h
//  LiarsPoker
//
//  Created by Edward Mitchell on 7/7/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PlaceBetProtocol <NSObject>

-(void) placeBetDidComplete;
-(void) placeBetDiDFail: (NSString*) message;

@end
