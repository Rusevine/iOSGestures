//
//  PanGestureViewController.m
//  iOSGestures
//
//  Created by Wiljay Flores on 2018-08-09.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "PanGestureViewController.h"

@interface PanGestureViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *image1;


@end

@implementation PanGestureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)panGestureHandler:(UIPanGestureRecognizer *)sender {
    self.image1.center = [sender locationInView:self.view];
}


@end
