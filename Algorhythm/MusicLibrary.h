//
//  MusicLibrary.h
//  Algorhythm
//
//  Created by Ping-jung Tsai on 3/2/15.
//  Copyright (c) 2015 Ping-jung Tsai. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const kTitle;
extern NSString *const kDescription;
extern NSString *const kIcon;
extern NSString *const kLargeIcon;
extern NSString *const kBackgroundColor;
extern NSString *const kArtists;

@interface MusicLibrary : NSObject

@property (strong, nonatomic) NSArray *library;
@end
