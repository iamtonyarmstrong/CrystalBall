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

#pragma mark - View instatiation methods
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    if (!_crystalBall) _crystalBall = [[CRBCrystalBall alloc]init];
    self.backgroundImageView.animationImages = [[NSArray alloc]initWithObjects:
                                                [UIImage imageNamed:@"CB00001"],
                                                [UIImage imageNamed:@"CB00002"],
                                                [UIImage imageNamed:@"CB00003"],
                                                [UIImage imageNamed:@"CB00004"],
                                                [UIImage imageNamed:@"CB00005"],
                                                [UIImage imageNamed:@"CB00006"],
                                                [UIImage imageNamed:@"CB00007"],
                                                [UIImage imageNamed:@"CB00008"],
                                                [UIImage imageNamed:@"CB00009"],
                                                [UIImage imageNamed:@"CB00010"],
                                                [UIImage imageNamed:@"CB00011"],
                                                [UIImage imageNamed:@"CB00012"],
                                                [UIImage imageNamed:@"CB00013"],
                                                [UIImage imageNamed:@"CB00014"],
                                                [UIImage imageNamed:@"CB00015"],
                                                [UIImage imageNamed:@"CB00016"],
                                                [UIImage imageNamed:@"CB00017"],
                                                [UIImage imageNamed:@"CB00018"],
                                                [UIImage imageNamed:@"CB00019"],
                                                [UIImage imageNamed:@"CB00020"],
                                                [UIImage imageNamed:@"CB00021"],
                                                [UIImage imageNamed:@"CB00022"],
                                                [UIImage imageNamed:@"CB00023"],
                                                [UIImage imageNamed:@"CB00024"],
                                                [UIImage imageNamed:@"CB00025"],
                                                [UIImage imageNamed:@"CB00026"],
                                                [UIImage imageNamed:@"CB00027"],
                                                [UIImage imageNamed:@"CB00028"],
                                                [UIImage imageNamed:@"CB00029"],
                                                [UIImage imageNamed:@"CB00030"],
                                                [UIImage imageNamed:@"CB00031"],
                                                [UIImage imageNamed:@"CB00032"],
                                                [UIImage imageNamed:@"CB00033"],
                                                [UIImage imageNamed:@"CB00034"],
                                                [UIImage imageNamed:@"CB00035"],
                                                [UIImage imageNamed:@"CB00036"],
                                                [UIImage imageNamed:@"CB00037"],
                                                [UIImage imageNamed:@"CB00038"],
                                                [UIImage imageNamed:@"CB00039"],
                                                [UIImage imageNamed:@"CB00040"],
                                                [UIImage imageNamed:@"CB00041"],
                                                [UIImage imageNamed:@"CB00042"],
                                                [UIImage imageNamed:@"CB00043"],
                                                [UIImage imageNamed:@"CB00044"],
                                                [UIImage imageNamed:@"CB00045"],
                                                [UIImage imageNamed:@"CB00046"],
                                                [UIImage imageNamed:@"CB00047"],
                                                [UIImage imageNamed:@"CB00048"],
                                                [UIImage imageNamed:@"CB00049"],
                                                [UIImage imageNamed:@"CB00050"],
                                                [UIImage imageNamed:@"CB00051"],
                                                [UIImage imageNamed:@"CB00052"],
                                                [UIImage imageNamed:@"CB00053"],
                                                [UIImage imageNamed:@"CB00054"],
                                                [UIImage imageNamed:@"CB00055"],
                                                [UIImage imageNamed:@"CB00056"],
                                                [UIImage imageNamed:@"CB00057"],
                                                [UIImage imageNamed:@"CB00058"],
                                                [UIImage imageNamed:@"CB00059"],
                                                [UIImage imageNamed:@"CB00060"],
                                                [UIImage imageNamed:@"CB00001"],
                                                nil];

    self.backgroundImageView.animationDuration = 2.0f;
    self.backgroundImageView.animationRepeatCount = 1;

    //Find sound file
    NSString *soundFilePath = [[NSBundle mainBundle]pathForResource:@"crystal_ball" ofType:@"mp3"];
    NSURL *soundUrl = [NSURL fileURLWithPath:soundFilePath];
    AudioServicesCreateSystemSoundID(CFBridgingRetain(soundUrl), &(_soundEffect));

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


- (void)makePrediction
{
    [self.backgroundImageView startAnimating];
    //self.predictionLabel.textColor = self.crystalBall.randomColors;
    self.predictionLabel.text = self.crystalBall.randomPrediction;
    [UIView animateWithDuration:4.0f animations:^{
        self.predictionLabel.alpha = 1.0f;
    }];
    AudioServicesPlaySystemSound(_soundEffect);
}


#pragma mark - Capture motion events
- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    self.predictionLabel.text = nil;
    self.predictionLabel.alpha = 0.0f;
}


- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    NSLog(@"a motion ended");
    if (motion == UIEventSubtypeMotionShake) {
        [self makePrediction];
    }
}


#pragma mark - Capture touch events
- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.predictionLabel.text = nil;
    self.predictionLabel.alpha = 0.0f;
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self makePrediction];
}

@end
