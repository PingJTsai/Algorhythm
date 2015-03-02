//
//  PlayListDetailViewController.h
//  Algorhythm
//
//  Created by Ping-jung Tsai on 3/1/15.
//  Copyright (c) 2015 Ping-jung Tsai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayListDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *buttonPressLabel;

@property (strong, nonatomic) NSString *segueText;

@end
