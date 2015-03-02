//
//  PlayListDetailViewController.m
//  Algorhythm
//
//  Created by Ping-jung Tsai on 3/1/15.
//  Copyright (c) 2015 Ping-jung Tsai. All rights reserved.
//

#import "PlayListDetailViewController.h"

@interface PlayListDetailViewController ()

@end

@implementation PlayListDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.buttonPressLabel.text = self.segueText;
    NSLog(@"%@", self.segueText);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
