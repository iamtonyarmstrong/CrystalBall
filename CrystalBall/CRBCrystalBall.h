//
//  CRBCrystalBall.h
//  CrystalBall
//
//  Created by Anthony Armstrong on 5/31/14.
//  Copyright (c) 2014 iamtonyarmstrong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CRBCrystalBall : NSObject

@property(nonatomic, strong) NSArray *predictions;
@property(nonatomic, strong) NSArray *colors;

-(NSString *)randomPrediction;
-(UIColor *)randomColors;

@end
