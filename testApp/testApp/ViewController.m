//
//  ViewController.m
//  testApp
//
//  Created by Aaron Burke on 5/8/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // Create a weight workout
    weightWorkout *squats = (weightWorkout*)[workoutFactory createNewWorkout:WEIGHT];
    [squats setReps:10];
    [squats setSets:3];
    [squats setLiftWeight:35];
    [squats setWorkoutName:@"squat"];
    
    UILabel *weightLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 10.0f, 150.0f, 40.0f)];
    if (weightLabel) {
        weightLabel.font = [UIFont boldSystemFontOfSize:20.0f];
        weightLabel.text = [NSString stringWithFormat:@"The weighted workout you created is called %@ and consists of %i sets of %i reps",[squats workoutName], [squats sets], [squats reps]];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
