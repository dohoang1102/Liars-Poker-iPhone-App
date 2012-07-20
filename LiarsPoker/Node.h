//
//  Node.h
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/15/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property (retain, readonly, nonatomic) id element;
@property (retain, nonatomic) Node* next;

-(id) initWithElement: (id) mElement;

@end
