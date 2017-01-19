//
//  PanViewController.m
//  UIGesturesRecognizers
//
//  Created by Angie Linton on 2017-01-19.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()

@end

@implementation PanViewController

- (IBAction)redViewPanned:(UIPanGestureRecognizer *)sender {
    [sender locationInView:self.view];
//    CGPoint locationInView = [sender locationInView:self.view];
//    sender.view.center = locationInView;
    CGPoint translationInView = [sender translationInView:self.view];
    
    CGPoint oldCenter = sender.view.center;
    
    CGPoint newCenter = CGPointMake(oldCenter.x + translationInView.x, oldCenter.y + translationInView.y);
    //this will constantly call us, the translation in view is going to be the accumulated distance, so we need to set the translation back to 0 sot hat each time it's called we only ge the distance that has changed since the last time we moved the center point.
    sender.view.center = newCenter;
    [sender setTranslation:CGPointZero inView:self.view]; //this sets it back to 0
    

}

@end
