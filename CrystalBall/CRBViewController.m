//
//  CRBViewController.m
//  CrystalBall
//
//  Created by Anthony Armstrong on 5/31/14.
//  Copyright (c) 2014 iamtonyarmstrong. All rights reserved.
//

#import "CRBViewController.h"
#import "CRBCrystalBall.h"

@interface CRBViewController ()

@end

@implementation CRBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    if (!_crystalBall) _crystalBall = [[CRBCrystalBall alloc]init];

    /*
    //create background image programmatically, and insert the view at the bottom of the heirarchy
    UIImageView *iv = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"background"]];
    [self.view insertSubview:iv atIndex:0];
     */
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)predictButtonPressed:(id)sender
{
    [self changeTextLabel];
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    self.predictionLabel.text = nil;
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    NSLog(@"a motion ended");
    if (motion == UIEventSubtypeMotionShake) {
        [self changeTextLabel];
    }
}

- (void)changeTextLabel
{
    //self.predictionLabel.textColor = self.crystalBall.randomColors;
    self.predictionLabel.text = self.crystalBall.randomPrediction;
}


@end
