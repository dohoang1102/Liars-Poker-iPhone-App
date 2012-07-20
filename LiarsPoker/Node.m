//
//  Node.m
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/15/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import "Node.h"

@implementation Node

@synthesize next, element;

-(id) initWithElement: (id) mElement {
    self = [super init];
    
    if (self) {
        element = mElement;
        next = NULL;
    }
    
    return self;
}

-(void) dealloc {
    [next release];
    [element release];
    
    [super dealloc];
}

@end
