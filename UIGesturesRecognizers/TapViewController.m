//
//  TapViewController.m
//  UIGesturesRecognizers
//
//  Created by Angie Linton on 2017-01-19.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import "TapViewController.h"

@interface TapViewController ()

@end

@implementation TapViewController
//add a square
-(void) viewDidLoad{
    [super viewDidLoad];
    CGFloat width = 100;
    CGFloat height = 100;
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) - width/2, CGRectGetMidY(self.view.bounds) - height/2,  width, height);
  UIView *view = [[UIView alloc]initWithFrame:frame];
      //make it orange
    view.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:view];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(viewTapped:)];
    [view addGestureRecognizer:tapGesture];
    }
-(void) viewTapped:(UITapGestureRecognizer *) sender {
    
    UIColor *oldColor = sender.view.backgroundColor;
    UIColor *newColor =[oldColor isEqual: [UIColor purpleColor]] ? [UIColor orangeColor]: [UIColor purpleColor];
    sender.view.backgroundColor = newColor;
    
}

@end
