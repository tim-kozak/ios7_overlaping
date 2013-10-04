//
//  SlidedViewController.m
//  DeviceP2P
//
//  Created by Alexandr Afanasiev on 03.10.13.
//  Copyright (c) 2013 masterofcode. All rights reserved.
//

#import "SlidedViewController.h"

@interface SlidedViewController ()

@end

@implementation SlidedViewController

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) {
        CGRect screen = [[UIScreen mainScreen] bounds];
        if (self.navigationController) {
            CGRect frame = self.navigationController.view.frame;
            frame.origin.y = 20;
            frame.size.height = screen.size.height - 20;
            self.navigationController.view.frame = frame;
        } else {
            if ([self respondsToSelector: @selector(containerView)]) {
                UIView *containerView = (UIView *)[self performSelector: @selector(containerView)];
                
                CGRect frame = containerView.frame;
                frame.origin.y = 20;
                frame.size.height = screen.size.height - 20;
                containerView.frame = frame;
            } else {
                CGRect frame = self.view.frame;
                frame.origin.y = 20;
                frame.size.height = screen.size.height - 20;
                self.view.frame = frame;
            }
        }
    }
}

@end
