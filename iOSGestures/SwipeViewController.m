//
//  SwipeViewController.m
//  iOSGestures
//
//  Created by Wiljay Flores on 2018-08-10.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()

@property (nonatomic) UIView *swipeView;

@end

@implementation SwipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds)-100/2, CGRectGetMidY(self.view.bounds)-100/2, 500, 100);
    
    _swipeView = [[UIView alloc] initWithFrame:frame];
    self.swipeView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.swipeView];
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeLeftHandler:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.swipeView addGestureRecognizer:swipeLeft];
    
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeRightHandler:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [self.swipeView addGestureRecognizer:swipeRight];
    
    

}

-(void)swipeLeftHandler:(UISwipeGestureRecognizer*)sender{
    self.swipeView.backgroundColor = [UIColor orangeColor];
}

-(void)swipeRightHandler:(UISwipeGestureRecognizer*)sender{
    self.swipeView.backgroundColor = [UIColor greenColor];
    
}


@end
