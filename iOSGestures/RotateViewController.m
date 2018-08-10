//
//  RotateViewController.m
//  iOSGestures
//
//  Created by Wiljay Flores on 2018-08-10.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "RotateViewController.h"

@interface RotateViewController ()

@property (nonatomic) UIView *rotateView;
@end

@implementation RotateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds)-100/2, CGRectGetMidY(self.view.bounds)-100/2, 100, 100);
    
    _rotateView = [[UIView alloc] initWithFrame:frame];
    self.rotateView.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:self.rotateView];
    
    UIRotationGestureRecognizer *rotate = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(rotateHandler:)];
    [self.rotateView addGestureRecognizer:rotate];

}

-(void)rotateHandler:(UIRotationGestureRecognizer*)sender{
  
    self.rotateView.transform = CGAffineTransformMakeRotation(sender.rotation);
    
//    CGFloat lastRotation =0;
//    CGFloat originalRotation;
//    switch(sender.state){
//        case UIGestureRecognizerStateBegan:
//            sender.rotation = lastRotation;
//            originalRotation = sender.rotation;
//            break;
//        case UIGestureRecognizerStateChanged:
//            CGFloat newRotation = sender.rotation + originalRotation;
//            sender.view.transform = CGAffineTransform(rotationAngle)
    
}


@end
