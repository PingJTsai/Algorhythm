//
//  PlayList.m
//  Algorhythm
//
//  Created by Ping-jung Tsai on 3/2/15.
//  Copyright (c) 2015 Ping-jung Tsai. All rights reserved.
//

#import "PlayList.h"
#import "MusicLibrary.h"

@implementation PlayList


- (instancetype)initWithIndex:(NSUInteger)index {
    self = [super init];
    if (self) {
        MusicLibrary *musicLibrary = [[MusicLibrary alloc] init];
        NSArray *library = musicLibrary.library;
        
        NSDictionary *playlistDictionary = library[index];
        _playlistTitle = [playlistDictionary objectForKey:kTitle];
        _playlistDescription = [playlistDictionary objectForKey:kDescription];
        
        NSString *iconName = [playlistDictionary objectForKey:kIcon];
        _playlistIcon = [UIImage imageNamed:iconName];
        
        NSString *largeIconName = [playlistDictionary objectForKey:kLargeIcon];
        _playlistIconLarge = [UIImage imageNamed:largeIconName];
        
        _playlistArtists = [NSArray arrayWithArray:[playlistDictionary objectForKey:kArtists]];
        
        NSDictionary *colorDictionary = [playlistDictionary objectForKey:kBackgroundColor];
        _backgroundColor = [self rgbColorFromDictionary:colorDictionary];
        
       
        
    }
    return self;
}

- (UIColor *)rgbColorFromDictionary:(NSDictionary *)colorDictionary{
    CGFloat red = [[colorDictionary objectForKey:@"red"] doubleValue]; //get NSNumber first than use  doubleValue to convert to CGFloat
    CGFloat green = [[colorDictionary objectForKey:@"green"] doubleValue]; //get NSNumber first than use  doubleValue to convert to CGFloat
    CGFloat blue = [[colorDictionary objectForKey:@"blue"] doubleValue]; //get NSNumber first than use  doubleValue to convert to CGFloat
    CGFloat alpha = [[colorDictionary objectForKey:@"alpha"] doubleValue]; //get NSNumber first than use  doubleValue to convert to CGFloat

    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}

@end
