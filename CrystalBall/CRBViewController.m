//
//  CRBViewController.m
//  CrystalBall
//
//  Created by Anthony Armstrong on 5/31/14.
//  Copyright (c) 2014 iamtonyarmstrong. All rights reserved.
//

#import "CRBViewController.h"

@interface CRBViewController ()

@end

@implementation CRBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    self.colors = @[[UIColor blackColor], [UIColor greenColor], [UIColor blueColor],
                    [UIColor redColor], [UIColor grayColor], [UIColor orangeColor]];
    
    self.predictions= @[@"It is certain",
                        @"It is decidedly so",
                        @"The reply is No",
                        @"Yes!",
                        @"Better not to tell you now",
                        @"Doubtful",
                        @"The stars are aligned",
                        @"Concentrate and ask again",
                        @"Perhaps",
                        @"Unable to answer now",
                        @"Maybe, leaning to yes"];

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)predictButtonPressed:(id)sender
{
    self.predictionLabel.textColor = self.colors[(NSUInteger)arc4random_uniform((int)[self.colors count])];
    self.predictionLabel.text = self.predictions[(NSUInteger)arc4random_uniform((int)[self.predictions count])];
}


@end
