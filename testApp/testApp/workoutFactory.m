//
//  workoutFactory.m
//  testApp
//
//  Created by Aaron Burke on 5/8/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import "workoutFactory.h"

@implementation workoutFactory

+(baseWorkout *)createNewWorkout: (int)workoutType
{
    if (workoutType == WEIGHT) {
        return [[weightWorkout alloc] init];
    } else if (workoutType == RUN) {
        return [[runWorkout alloc] init];
    } else if (workoutType == SWIM) {
        return [[swimWorkout alloc] init];
    } else {
        return nil;
    }
}

@end
