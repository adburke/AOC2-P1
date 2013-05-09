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
        [squats setWorkoutName:@"Squat"];
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
        // 10k in miles
        [run10k setDistance:6.21371];
        [run10k setUserWeight:160];
        [run10k setWorkoutName:@"10k Run"];
        [run10k setEquipment:@[@"Running Shoes", @"Running Shorts", @"Water Bottle"]];
    }
    
    UILabel *run10kLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 220.0f, 768.0f, 110.0f)];
    if (run10kLabel1 && run10k) {
        run10kLabel1.font = [UIFont boldSystemFontOfSize:20.0f];
        run10kLabel1.backgroundColor = [UIColor orangeColor];
        run10kLabel1.text = [NSString stringWithFormat:@"The running workout you created is named %@.\n It consists of %f miles of running.\n Equipment used: %@", [run10k workoutName], [run10k distance], [run10k.equipment componentsJoinedByString:@", "]];
        run10kLabel1.textAlignment = NSTextAlignmentCenter;
        run10kLabel1.numberOfLines = 3;
        [self.view addSubview:run10kLabel1];
    }
    
    UILabel *run10kLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 340.0f, 768.0f, 60.0f)];
    if (run10kLabel2 && run10k) {
        run10kLabel2.font = [UIFont boldSystemFontOfSize:20.0f];
        run10kLabel2.backgroundColor = [UIColor orangeColor];
        run10kLabel2.text = [run10k calculateCaloriesBurned];
        run10kLabel2.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:run10kLabel2];
    }
    
    // Create a swim workout
    swimWorkout *swim500m = (swimWorkout*)[workoutFactory createNewWorkout:SWIM];
    if (swim500m) {
        [swim500m setLaps:5];
        [swim500m setUserWeight:160];
        [swim500m setWorkoutName:@"500m Swim"];
        [swim500m setEquipment:@[@"Goggles", @"Swim Suit"]];
    }
    
    UILabel *swim500mLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 430.0f, 768.0f, 110.0f)];
    if (swim500mLabel1 && swim500m) {
        swim500mLabel1.font = [UIFont boldSystemFontOfSize:20.0f];
        swim500mLabel1.backgroundColor = [UIColor yellowColor];
        swim500mLabel1.text = [NSString stringWithFormat:@"The swimming workout you created is named %@.\n It consists of %d laps of swimming in an olympic size pool.\n Equipment used: %@", [swim500m workoutName], [swim500m laps], [swim500m.equipment componentsJoinedByString:@", "]];
        swim500mLabel1.textAlignment = NSTextAlignmentCenter;
        swim500mLabel1.numberOfLines = 3;
        [self.view addSubview:swim500mLabel1];
    }
    
    UILabel *swim500mLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 550.0f, 768.0f, 60.0f)];
    if (swim500mLabel2 && swim500m) {
        swim500mLabel2.font = [UIFont boldSystemFontOfSize:20.0f];
        swim500mLabel2.backgroundColor = [UIColor yellowColor];
        swim500mLabel2.text = [swim500m calculateCaloriesBurned];
        swim500mLabel2.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:swim500mLabel2];
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
