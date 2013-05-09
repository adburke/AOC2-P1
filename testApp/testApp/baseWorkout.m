//
//  baseWorkout.m
//  testApp
//
//  Created by Aaron Burke on 5/8/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import "baseWorkout.h"

@implementation baseWorkout

// Synthesize for auto getter and setter
@synthesize workoutTime, caloriesBurned, userWeight, technique, equipment;

-(id)init
{
    self = [super init];
    if (self)
    {
        [self setWorkoutTime:0];
        [self setCaloriesBurned:0];
        [self setUserWeight:0];
        [self setTechnique:nil];
        [self setEquipment:nil];
        
        // Or this - Both set methods work
//        workoutTime = 0;
//        caloriesBurned = 0;
//        weight = 0;
//        technique = nil;
//        equipment = nil;
    }
    return self;
}

-(NSString *)calculateCaloriesBurned
{
    NSString *calBurnedMsg = [[NSString alloc] initWithFormat:@"This workout burned %i calories.", caloriesBurned];
    return calBurnedMsg;
}

@end
