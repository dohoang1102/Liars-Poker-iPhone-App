//
//  Stack.h
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/15/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@protocol Stack <NSObject>

-(id) initWithFirst: (id) first;
-(void) push: (id) value;
-(id) pop;
-(id) top;
-(BOOL) isEmpty;
-(void) makeEmpty;

@end
