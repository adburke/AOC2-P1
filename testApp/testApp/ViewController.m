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
    if (squats) {
        [squats setReps:10];
        [squats setSets:3];
        [squats setLiftWeight:35];
        [squats setWorkoutName:@"squat"];
        // Seems like this could be simplified into the setter
//        NSArray *squatEquip = @[@"45lb Bar", @"Rubber or Metal Plates"];
        [squats setEquipment:@[@"45lb Bar", @"Rubber or Metal Plates"]];
    }
    
    
    UILabel *weightLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 10.0f, 768.0f,110.0f)];
    if (weightLabel && squats) {
        weightLabel.font = [UIFont boldSystemFontOfSize:20.0f];
        weightLabel.backgroundColor = [UIColor lightGrayColor];
        NSString *equipList = [squats.equipment componentsJoinedByString:@", "];
        weightLabel.text = [NSString stringWithFormat:@"The weighted workout you created is named %@.\n It consists of %i sets of %i reps.\n Equipment used: %@",[squats workoutName], [squats sets], [squats reps], equipList];
        weightLabel.textAlignment = NSTextAlignmentCenter;
        weightLabel.numberOfLines = 5;
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
