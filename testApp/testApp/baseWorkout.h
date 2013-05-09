//
//  baseWorkout.h
//  testApp
//
//  Created by Aaron Burke on 5/8/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseWorkout : NSObject
{
    int workoutEnum;
}

typedef enum {
    WEIGHT = 0,
    RUN,
    SWIM
} workoutEnum;

@property int workoutTime;
@property int caloriesBurned;
@property int userWeight;
@property NSString *technique;
@property NSArray *equipment;

-(id)init;

-(NSString *)calculateCaloriesBurned;

@end
