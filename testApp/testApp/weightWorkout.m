//
//  weightWorkout.m
//  testApp
//
//  Created by Aaron Burke on 5/8/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import "weightWorkout.h"

@implementation weightWorkout

@synthesize reps, sets;

-(id)init
{
    self = [super init];
    if (self)
    {
        [self setReps:0];
        [self setSets:0];
        [self setCaloriesBurned:0];
    }
    return self;
}

-(NSString *)calculateCaloriesBurned
{
    [self setCaloriesBurned:(reps * sets)];
    NSString *calBurnedMsg = [[NSString alloc] initWithFormat:@"This workout burned %i calories.", self.workoutTime ];
    return calBurnedMsg;
}

@end
