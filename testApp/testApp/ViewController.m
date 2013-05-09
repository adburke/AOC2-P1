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
    
    UILabel *weightLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 10.0f, 768.0f, 80.0f)];
    if (weightLabel) {
        weightLabel.font = [UIFont boldSystemFontOfSize:20.0f];
        weightLabel.backgroundColor = [UIColor lightGrayColor];
        weightLabel.text = [NSString stringWithFormat:@"The weighted workout you created is named %@.\n It consists of %i sets of %i reps.",[squats workoutName], [squats sets], [squats reps]];
        weightLabel.textAlignment = NSTextAlignmentCenter;
        weightLabel.numberOfLines = 2;
        // Just testing this out
        // weightLabel.adjustsFontSizeToFitWidth = TRUE;
        [self.view addSubview:weightLabel];
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
