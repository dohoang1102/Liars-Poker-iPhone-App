//
//  CreateHandProtocol.h
//  LiarsPoker
//
//  Created by Edward Mitchell on 7/8/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CreateHandProtocol <NSObject>

-(void) createHandDidComplete;
-(void) createHandDidFail:(NSString*) message;

@end
