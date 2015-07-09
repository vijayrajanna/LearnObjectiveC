//
//  main.h
//  LearnObjectiveC
//
//  Created by Vijay Rajanna on 6/4/15.
//  Copyright (c) 2015 Vijay Rajanna. All rights reserved.
//

#ifndef LearnObjectiveC_main_h
#define LearnObjectiveC_main_h

// Declaration of Box interface
@interface Box : NSObject
{
    //Data member declaration
    double length;
    double breadth;
    double heightt;
}

// Declaration of interface to height instance variable
@property(nonatomic, readonly) double height ; //property declaration

// Member function declaration
-(double) calculateVolume;

@end

@interface Box()

//@property(nonatomic, readwrite) double height ; //property declaration

@end

#endif
