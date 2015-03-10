//
//  PlayListDetailViewController.m
//  Algorhythm
//
//  Created by Ping-jung Tsai on 3/1/15.
//  Copyright (c) 2015 Ping-jung Tsai. All rights reserved.
//

#import "PlayListDetailViewController.h"
#import "PlayList.h"

@interface PlayListDetailViewController ()

@end

@implementation PlayListDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (self.playlist){
  //      self.buttonPressLabel.text = self.playlist.playlistTitle;
        self.playlistCoverImage.image = self.playlist.playlistIconLarge;
        self.playlistCoverImage.backgroundColor = self.playlist.backgroundColor;
        self.playlistTitle.text = self.playlist.playlistTitle;
        self.playlistDescription.text = self.playlist.playlistDescription;
        self.playlistArtist0.text = self.playlist.playlistArtists[0];
        self.playlistArtist1.text = self.playlist.playlistArtists[1];
        self.playlistArtist2.text = self.playlist.playlistArtists[2];
        
        //NSLog(@"%@", self.playlist.playlistTitle);
    }
 //   NSLog(@"%@", self.segueText);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
