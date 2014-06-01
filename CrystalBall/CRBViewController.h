//
//  CRBViewController.h
//  CrystalBall
//
//  Created by Anthony Armstrong on 5/31/14.
//  Copyright (c) 2014 iamtonyarmstrong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CRBViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *predictionLabel;
@property (nonatomic, strong) NSArray *predictions;
@property (nonatomic, strong) NSArray *colors;

@end
