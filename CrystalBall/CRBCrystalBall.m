//
//  CRBCrystalBall.m
//  CrystalBall
//
//  Created by Anthony Armstrong on 5/31/14.
//  Copyright (c) 2014 iamtonyarmstrong. All rights reserved.
//

#import "CRBCrystalBall.h"

@implementation CRBCrystalBall

@synthesize predictions, colors;

-(NSArray *) predictions
{
    return self.setPredictions;
}


-(NSArray *) setPredictions
{
    NSArray *predictionsList = @[@"It is certain",
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

    return predictionsList;
}


-(NSArray *) colors
{
    return self.setColors;
}


-(NSArray *) setColors
{
    NSArray *someColors = @[[UIColor blackColor], [UIColor greenColor], [UIColor blueColor],
                            [UIColor redColor], [UIColor grayColor], [UIColor orangeColor]];

    return someColors;
}


-(NSString *)randomPrediction
{
    return self.predictions[(NSUInteger)arc4random_uniform((int)[self.predictions count])];
}


-(UIColor *)randomColors
{
    return self.colors[(NSUInteger)arc4random_uniform((int)[self.colors count])];
}

@end
