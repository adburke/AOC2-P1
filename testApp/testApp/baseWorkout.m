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
@synthesize time, caloriesBurned, technique, equipment;

-(id)init
{
    self = [super init];
    if (self)
    {
        [self setTime:0];
        [self setCaloriesBurned:0];
        [self setTechnique:nil];
        [self setEquipment:nil];
        
        // Or this - Both set methods work
//        time = 0;
//        caloriesBurned = 0;
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
