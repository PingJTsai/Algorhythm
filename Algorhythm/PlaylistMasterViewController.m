//
//  ViewController.m
//  Algorhythm
//
//  Created by Ping-jung Tsai on 3/1/15.
//  Copyright (c) 2015 Ping-jung Tsai. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"
#import "PlayList.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //[self.aButton setTitle:@"Press me!" forState:UIControlStateNormal];

    //create new playlist instance
    //PlayList *playlist = [[PlayList alloc] initWithIndex:0];
    //self.playListImageView0.image = playlist.playlistIcon;
    
    //loop through the playlistImaveView Count.
    for (NSUInteger index = 0; index <self.playlistImageViews.count; index++){
        //create playlist for each one of the playlist
        PlayList *playlist = [[PlayList alloc] initWithIndex:index];
        UIImageView *playlistImageView = self.playlistImageViews[index];
        playlistImageView.image = playlist.playlistIcon;
        playlistImageView.backgroundColor = playlist.backgroundColor;
        
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //NSLog(@"%@", segue.identifier);
    if ([segue.identifier isEqualToString:@"showPlaylistDetail"]){
        
        //get the view from the sender to identify which image view has been clicked
        UIImageView *playlistImageView = (UIImageView *)[sender view];
        //now we need to find out what's the index (within the playlistImageViews collection) is associated with this playlistImageView
        //if this selected playlistImageView exist in the collection, then find the index of this object
        if ([self.playlistImageViews containsObject:playlistImageView]){
            NSUInteger index = [self.playlistImageViews indexOfObject:playlistImageView];
            //doSomething based on the index found
            PlayListDetailViewController *playlistDetailController = (PlayListDetailViewController *)segue.destinationViewController;
            //playlistDetailController.segueText = @"Yay! You pressed the button!";
            //pass the entire playlist over
            playlistDetailController.playlist = [[PlayList alloc] initWithIndex:index];
        }
    }
}

- (IBAction)showPlaylistDetail:(id)sender {
    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
    
}

@end
