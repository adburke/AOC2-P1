//
//  workoutFactory.h
//  testApp
//
//  Created by Aaron Burke on 5/8/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseWorkout.h"
#import "runWorkout.h"
#import "weightWorkout.h"
#import "swimWorkout.h"

@interface workoutFactory : NSObject

+(baseWorkout *)createNewWorkout: (int)workoutType;

@end
