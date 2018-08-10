//
//  PinchGestureViewController.m
//  iOSGestures
//
//  Created by Wiljay Flores on 2018-08-09.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "PinchGestureViewController.h"

@interface PinchGestureViewController ()

@end

@implementation PinchGestureViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds)-100/2, CGRectGetMidY(self.view.bounds)-100/2, 100, 100);
    
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:view];
    
    UIPinchGestureRecognizer *pinchGesture = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(viewPinched:)];
    [view addGestureRecognizer:pinchGesture];
    

}
-(void)viewPinched:(UIPinchGestureRecognizer *)sender{
    CGFloat scale = sender.scale;
    sender.view.transform = CGAffineTransformMakeScale(scale, scale);
    
    scale = 1.0;
}



@end
