//
//  ViewController.m
//  Multiply
//
//  Created by Fletcher Rhoads on 1/7/14.
//  Copyright (c) 2014 Fletcher Rhoads. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    __weak IBOutlet UITextField *myNumber;
    __weak IBOutlet UILabel *myMultiplier;
    __weak IBOutlet UILabel *myAnswer;
    __weak IBOutlet UISlider *mySlider;
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
- (IBAction)mySliderOnMove:(id)sender {
    NSString *sliderString = [NSString stringWithFormat:@"%f", mySlider.value];
    myMultiplier.text = sliderString;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
