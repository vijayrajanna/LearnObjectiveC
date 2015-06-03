//
//  Encapsulation.m
//  LearnObjectiveC
//
//  Created by Vijay Rajanna on 6/3/15.
//  Copyright (c) 2015 Vijay Rajanna. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Adder : NSObject
{

// Data members declared here are private
    
    NSInteger total;
}

// Things declared here are public

- (id)initWithInitialNumber:(NSInteger)initialNumber;

- (void)addNumber:(NSInteger)newNumber;

- (NSInteger)getTotal;

@end

@implementation Adder

-(id)initWithInitialNumber:(NSInteger)initialNumber{
    total = initialNumber;
    return self;
}

- (void)addNumber:(NSInteger)newNumber{
    total = total + newNumber;
}

- (NSInteger)getTotal{
    return total;
}

@end

int main(int argc, const char * argv[])
{

    Adder *adder = [[Adder alloc]initWithInitialNumber:10];
    
    // The following statemetn is not possible becuase, total is a private member
    // YOu need to create a public property to access it
    // adder.total = 20;
    
    [adder addNumber:5];
    [adder addNumber:4];
    NSLog(@"The total is %ld",[adder getTotal]);
    return 0;
}