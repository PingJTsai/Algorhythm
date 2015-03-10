//
//  PlayListDetailViewController.h
//  Algorhythm
//
//  Created by Ping-jung Tsai on 3/1/15.
//  Copyright (c) 2015 Ping-jung Tsai. All rights reserved.
//

#import <UIKit/UIKit.h>

//include playlist class
@class PlayList;

@interface PlayListDetailViewController : UIViewController

@property (strong, nonatomic) PlayList *playlist;
@property (weak, nonatomic) IBOutlet UIImageView *playlistCoverImage;
@property (weak, nonatomic) IBOutlet UILabel *playlistTitle;
@property (weak, nonatomic) IBOutlet UILabel *playlistDescription;

@property (weak, nonatomic) IBOutlet UILabel *playlistArtist0;
@property (weak, nonatomic) IBOutlet UILabel *playlistArtist1;
@property (weak, nonatomic) IBOutlet UILabel *playlistArtist2;



@end
