//
//  weightWorkout.m
//  testApp
//
//  Created by Aaron Burke on 5/8/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import "weightWorkout.h"

#define gravity 9.8

@implementation weightWorkout

@synthesize reps, sets, liftWeight;

-(id)init
{
    self = [super init];
    if (self)
    {
        [self setReps:0];
        [self setSets:0];
        [self setLiftWeight:0];
        [self setCaloriesBurned:0];
    }
    return self;
}

-(NSString *)calculateCaloriesBurned
{
    [self setCaloriesBurned:( (reps * sets) * ( (gravity * liftWeight)/1000) ) ];
    NSString *calBurnedMsg = [[NSString alloc] initWithFormat:@"This workout burned an estimated %i calories.", self.caloriesBurned];
    return calBurnedMsg;
}

@end
