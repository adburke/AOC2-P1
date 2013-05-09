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
        // Seems like this could be simplified into the setter saving the creation of a variable. Let me know your thoughts.
        // NSArray *squatEquip = @[@"45lb Bar", @"Rubber or Metal Plates"];
        [squats setEquipment:@[@"45lb Bar", @"Rubber or Metal Plates"]];
    }
    
    UILabel *weightLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 10.0f, 768.0f,110.0f)];
    if (weightLabel1 && squats) {
        weightLabel1.font = [UIFont boldSystemFontOfSize:20.0f];
        weightLabel1.backgroundColor = [UIColor lightGrayColor];
        // Looks like this accomplished the same as my comment above by moving it directly into the weightLabel.text
        // Seems like a more concise usage
        // NSString *equipList = [squats.equipment componentsJoinedByString:@", "];
        weightLabel1.text = [NSString stringWithFormat:@"The weighted workout you created is named %@.\n It consists of %i sets of %i reps.\n Equipment used: %@",[squats workoutName], [squats sets], [squats reps], [squats.equipment componentsJoinedByString:@", "]];
        weightLabel1.textAlignment = NSTextAlignmentCenter;
        weightLabel1.numberOfLines = 5;
        // Just testing this out
        // weightLabel.adjustsFontSizeToFitWidth = TRUE;
        [self.view addSubview:weightLabel1];
    }
    
    UILabel *weightLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 130.0f, 768.0f, 60.0f)];
    if (weightLabel2 && squats) {
        weightLabel2.font = [UIFont boldSystemFontOfSize:20.0f];
        weightLabel2.backgroundColor = [UIColor lightGrayColor];
        weightLabel2.text = [squats calculateCaloriesBurned];
        weightLabel2.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:weightLabel2];
    }
    
    // Create a run workout
    runWorkout *run10k = (runWorkout*)[workoutFactory createNewWorkout:RUN];
    if (run10k) {
        // 10k to miles
        [run10k setDistance:6.21371];
        [run10k setUserWeight:160];
        [run10k setWorkoutName:@"10k Run"];
        [run10k setEquipment:@[@"Running Shoes", @"Running Shorts", @"Water Bottle"]];
    }
    
    UILabel *run10k1 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 220.0f, 768.0f, 110.0f)];
    if (run10k1 && run10k) {
        run10k1.font = [UIFont boldSystemFontOfSize:20.0f];
        run10k1.backgroundColor = [UIColor orangeColor];
        run10k1.text = [NSString stringWithFormat:@"The weighted workout you created is named %@.\n It consists of %f miles of running.\n Equipment used: %@", [run10k workoutName], [run10k distance], [run10k.equipment componentsJoinedByString:@", "]];
        run10k1.textAlignment = NSTextAlignmentCenter;
        run10k1.numberOfLines = 3;
        [self.view addSubview:run10k1];
    }
    
    UILabel *run10k2 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 340.0f, 768.0f, 60.0f)];
    if (run10k2 && run10k) {
        run10k2.font = [UIFont boldSystemFontOfSize:20.0f];
        run10k2.backgroundColor = [UIColor orangeColor];
        run10k2.text = [run10k calculateCaloriesBurned];
        run10k2.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:run10k2];
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
