//
//  LinkedStack.m
//  LiarsPoker
//
//  Created by Edward Mitchell on 6/15/12.
//  Copyright (c) 2012 Edeesis Productions. All rights reserved.
//

#import "LinkedStack.h"

@implementation LinkedStack

@synthesize topOfStack;

-(id) initWithFirst:(id)first {
    self = [super init];
    
    if (self) {
        [topOfStack initWithElement:first];
    }
    
    return self;
}

-(BOOL) isEmpty {
    return topOfStack == NULL;
}

-(void) makeEmpty {
    topOfStack = NULL;
}

-(void) push:(id)value {
    
    Node* newTop = [[Node alloc] initWithElement: value];
    newTop.next = topOfStack;
    topOfStack = newTop;
}

-(id) pop {
    
    if (![self isEmpty]) {
        Node* top = topOfStack;
        id topValue = [top element];
        topOfStack = [topOfStack next];
        [top release];
        
        return topValue;
    }
    
    return NULL;
}

-(id) top {
    if (![self isEmpty]) {
        return topOfStack;
    }
    
    return NULL;
}

-(NSUInteger) countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(id *)stackbuf count:(NSUInteger)len 
{
    Node* currentNode;
    NSUInteger count = 0;
    
    if (state->state == 0)
    {
        currentNode = topOfStack;
    }
    else 
    {
        currentNode = (Node*) state->state;
    }
    
    while (currentNode.next != NULL && count < len)
    {
        stackbuf[count] = currentNode.element;
        currentNode = currentNode.next;
        count++;
    }
    
    state->state = (unsigned long) currentNode;
    state->itemsPtr = stackbuf;
    state->mutationsPtr = (unsigned long *) self;
    
    return count;
}

-(NSString*) description
{
    NSString* output = @"";
    
    for (id e in self)
    {
        [output stringByAppendingString: [e description]];
    }
    
    return output;
}

-(void) dealloc {
    [topOfStack release];
    
    [super dealloc];
}

@end
