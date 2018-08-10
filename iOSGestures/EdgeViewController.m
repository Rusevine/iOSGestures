//
//  EdgeViewController.m
//  iOSGestures
//
//  Created by Wiljay Flores on 2018-08-10.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "EdgeViewController.h"

@interface EdgeViewController () <UIGestureRecognizerDelegate> {
    CGFloat _centerX;
}

@property (nonatomic) UIScreenEdgePanGestureRecognizer *edgeGesture;

@end

@implementation EdgeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _edgeGesture = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:@selector(edgeGestureHandler:)];
    self.edgeGesture.edges = UIRectEdgeRight;
    self.edgeGesture.delegate = self;
    [self.view addGestureRecognizer:self.edgeGesture];
    
    _centerX = self.view.bounds.size.width /2;
}

-(void)edgeGestureHandler:(UIScreenEdgePanGestureRecognizer *)sender{
    UIView *view = [self.view hitTest:[sender locationInView:sender.view] withEvent:nil];
    
    if(sender.state == UIGestureRecognizerStateBegan){
        CGPoint translation = [sender locationInView:sender.view];
        view.center = CGPointMake(_centerX + translation.x, view.center.y);
    } else {
        [UIView animateWithDuration:.3 animations:^{
            view.center = CGPointMake(_centerX, view.center.y);
        }];
    }
}





@end
