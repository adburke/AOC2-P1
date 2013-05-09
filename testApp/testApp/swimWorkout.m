//
//  swimWorkout.m
//  testApp
//
//  Created by Aaron Burke on 5/8/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import "swimWorkout.h"

@implementation swimWorkout

@synthesize distance;

-(id)init
{
    self = [super init];
    if (self)
    {
        [self setDistance:0];
        [self setCaloriesBurned:0];
    }
    return self;
}

-(NSString *)calculateCaloriesBurned
{
    [self setCaloriesBurned:( self.userWeight * distance * 2.93 ) ];
    NSString *calBurnedMsg = [[NSString alloc] initWithFormat:@"This workout burned %i calories.", self.caloriesBurned];
    return calBurnedMsg;
}

@end
