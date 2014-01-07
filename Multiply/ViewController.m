//
//  ViewController.m
//  Multiply
//
//  Created by Kagan Riedel on 1/7/14.
//  Copyright (c) 2014 Kagan Riedel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    __weak IBOutlet UITextField *myNumber;
    __weak IBOutlet UILabel *myMultiplier;
    __weak IBOutlet UILabel *myAnswer;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)onCalculateButtonPressed:(id)sender
{
    int i = [myNumber.text intValue];
    int m = [myMultiplier.text intValue];
    int a = i * m;
    NSString *intString = [NSString stringWithFormat:@"%i", a];
    myAnswer.text = intString;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
