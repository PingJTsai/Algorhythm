//
//  ViewController.m
//  Algorhythm
//
//  Created by Ping-jung Tsai on 3/1/15.
//  Copyright (c) 2015 Ping-jung Tsai. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.aButton setTitle:@"Press me!" forState:UIControlStateNormal];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSLog(@"%@", segue.identifier);
    if ([segue.identifier isEqualToString:@"showPlaylistDetail"]){
        NSLog(@"123");
        //doSomething
        PlayListDetailViewController *playlistDetailController = (PlayListDetailViewController *)segue.destinationViewController;
        playlistDetailController.segueText = @"Yay! You pressed the button!";
        NSLog(@"%@", playlistDetailController.segueText);
    }
}


@end
