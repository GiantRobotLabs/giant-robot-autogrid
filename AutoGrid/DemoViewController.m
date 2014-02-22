//
//  com_giantrobotlabsViewController.m
//  AutoGrid
//
//  Created by john.neyer on 2/19/14.
//  Copyright (c) 2014 John Neyer. All rights reserved.
//

#import "DemoViewController.h"

@interface DemoViewController ()
{
    UIView *autoGridView;
}

@end

@implementation DemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSArray* nibViews = [[NSBundle mainBundle] loadNibNamed:@"AutoGrid" owner:self options:nil];
    autoGridView = (UIView*)[nibViews objectAtIndex:0];
    
    [autoGridView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:autoGridView];
    
    NSDictionary *views = NSDictionaryOfVariableBindings(autoGridView);
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[autoGridView]|"
                                                                          options:0
                                                                          metrics:nil
                                                                            views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[autoGridView]|"
                                                                          options:0
                                                                          metrics:nil
                                                                            views:views]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
