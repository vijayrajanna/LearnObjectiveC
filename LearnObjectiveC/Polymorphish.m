//
//  Polymorphish.m
//  LearnObjectiveC
//
//  Created by Vijay Rajanna on 6/3/15.
//  Copyright (c) 2015 Vijay Rajanna. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shape : NSObject

{
    CGFloat area;
}

- (void)printArea;
- (void)calculateArea;

@end

@implementation Shape

- (void)printArea{
    NSLog(@"The area is %f", area);
}

- (void)calculateArea{
    
}

@end


@interface Square : Shape
{
    CGFloat length;
}

- (id)initWithSide:(CGFloat)side;

- (void)calculateArea;

@end

@implementation Square

- (id)initWithSide:(CGFloat)side{
    length = side;
    return self;
}

- (void)calculateArea{
    area = length * length;
}

- (void)printArea{
    NSLog(@"The area of square is %f", area);
}

@end

@interface Rectangle : Shape
{
    CGFloat length;
    CGFloat breadth;
}

- (id)initWithLength:(CGFloat)rLength andBreadth:(CGFloat)rBreadth;


@end

@implementation Rectangle

- (id)initWithLength:(CGFloat)rLength andBreadth:(CGFloat)rBreadth{
    length = rLength;
    breadth = rBreadth;
    return self;
}

- (void)calculateArea{
    area = length * breadth;
}

@end


int maindummy_3(int argc, const char * argv[])
{
    Shape *square = [[Square alloc]initWithSide:10.0];
    [square calculateArea];
    [square printArea];
    Shape *rect = [[Rectangle alloc]
                   initWithLength:10.0 andBreadth:5.0];
    [rect calculateArea];
    [rect printArea];
    return 0;
}
