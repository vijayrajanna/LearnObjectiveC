//
//  main.m
//  LearnObjectiveC
//
//  Created by Vijay Rajanna on 5/28/15.
//  Copyright (c) 2015 Vijay Rajanna. All rights reserved.
//

#import <Foundation/Foundation.h>

//Declaration of the interface

@interface SampleClass:NSObject
{
    // Do data member declaration
}

    // Member function declaration
    - (void)sampleMethod;
    - (int)addTwoNumbers;
    - (int) multiplyNumbers:(int)number1 :(int)number2;
    - (void) callByReference:(int*)p;
@end

// Implementation of the interface
@implementation SampleClass

- (void)sampleMethod{
    NSLog(@"\n\rVijay Rajanna, welcome to learning objevtive C! \n");
}

- (int)addTwoNumbers{
    NSLog(@"Sum of two numbers = %d",(3+4));
    return (3+4);
}

- (int) multiplyNumbers:(int)number1 :(int)number2
{
    return number1 * number2;
}

- (void) callByReference:(int *)p
{
    *p = 20 ;
}
@end

// Declaration of Box interface
@interface Box : NSObject
{
//Data member declaration
    double length;
    double breadth;
    double height;
}
// Declaration of interface to height instance variable
@property(nonatomic, readwrite) double height ; //property declaration

// Member function declaration
-(double) calculateVolume;

@end

@implementation Box

@synthesize height;

-(id)init
{
    self = [super init];
    length = 1.0;
    breadth = 2.0;
    return self;
}

-(double) calculateVolume
{
    return length*breadth;
}

@end

int maindummy()
{
    /* my first program in Objective-C */
 
    SampleClass *sampleClass = [[SampleClass alloc]init];
    [sampleClass sampleMethod];
    [sampleClass addTwoNumbers];
    NSLog(@"Storage size for int : %ld \n", sizeof(unsigned long));
    const int  LENGTH = 10;
    const int  WIDTH  = 5;
    const char NEWLINE = '\n';
    int area;
    int p = 70 ;
    int t = [sampleClass multiplyNumbers:2:3];
    [sampleClass callByReference:&p];
    area = LENGTH * WIDTH;
    
    NSLog(@"value of area : %d", area);
    NSLog(@"%c", NEWLINE);
    NSLog(@"Multiplication of two numbers = %d", t);
    NSLog(@"Call by reference value of P = %d", p);
    
    NSString *greeting = NULL;
    greeting = [ NSString alloc];
    greeting = @"Hello Vijay Rajanna";
    
    NSLog(@"Greeting message: %@\n", greeting );
    
    NSLog(@"File :%s\n", __FILE__ );
    NSLog(@"Date :%s\n", __DATE__ );
    NSLog(@"Time :%s\n", __TIME__ );
    NSLog(@"Line :%d\n", __LINE__ );
    NSLog(@"ANSI :%d\n", __STDC__ );
    
    /////////////////////////////////////////////////////////////
    // Woking with box object
    ////////////////////////////////////////////////////////////
    
    Box* boxObject = [[Box alloc]init];
    double result = [boxObject calculateVolume];
    NSLog(@"The output of calculate resutl is %f", result);
    boxObject.height = 20.0;
    NSLog(@"The value of result*lenth is %f", result*(boxObject.height));
    
    return 0;
    
}