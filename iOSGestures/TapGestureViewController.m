//
//  TapGestureViewController.m
//  iOSGestures
//
//  Created by Wiljay Flores on 2018-08-09.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "TapGestureViewController.h"

@interface TapGestureViewController ()
@property (nonatomic) UIView *smallBox;
@end

@implementation TapGestureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds)-100/2, CGRectGetMidY(self.view.bounds)-100/2, 100, 100);
    
    _smallBox = [[UIView alloc] initWithFrame:frame];
    self.smallBox.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.smallBox];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureHandler:)];
    [self.smallBox addGestureRecognizer:tap];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tapGestureHandler:(UITapGestureRecognizer *)sender{
    self.smallBox.backgroundColor = [self.smallBox.backgroundColor isEqual: [UIColor redColor]] ? [UIColor purpleColor] : [UIColor redColor];
}


@end
