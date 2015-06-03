//
//  DerivedClsExample.m
//  LearnObjectiveC
//
//  Created by Vijay Rajanna on 6/3/15.
//  Copyright (c) 2015 Vijay Rajanna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

@interface Person : NSObject

{
    NSString *personName;
    NSInteger personAge;
}

- (id)init:(NSString *)name :(NSInteger)age;
- (void)print;
@end

@implementation Person

- (id)init:(NSString *)name :(NSInteger)age
{
    personName = name;
    personAge = age;
    return self;
}

- (void)print
{
    NSLog(@"Name: %@", personName);
    NSLog(@"Age: %ld", personAge);
}
@end

@interface Employee : Person

{
    NSString *employeeEducation;
}

- (id)init:(NSString *)name :(NSInteger)age :(NSString *)education;
- (void)print;

@end


@implementation Employee

- (id)init:(NSString *)name :(NSInteger)age : (NSString *)education
{
    personName = name;
    personAge = age;
    employeeEducation = education;
    return self;
}

- (void)print
{
    NSLog(@"Name: %@", personName);
    NSLog(@"Age: %ld", personAge);
    NSLog(@"Education: %@", employeeEducation);
}

@end


int main(int argc, const char * argv[])
{

    NSLog(@"Base class Person Object");
    Person *person = [[Person alloc]init:@"Raj":5];
    [person print];
    NSLog(@"Inherited Class Employee Object");
    Employee *employee = [[Employee alloc]init:@"Raj":5 :@"MBA"];
    [employee print];
    return 0;
}
