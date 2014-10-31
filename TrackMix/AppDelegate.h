//
//  AppDelegate.h
//  TrackMix
//
//  Created by セリ on 2014/10/31.
//  Copyright (c) 2014年 seri. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Track;

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSSlider *slider;
@property (strong) Track *track;

- (IBAction)mute:(id)sender;
- (IBAction)takeFloatValueForVolumeFrom:(id)sender;
- (void)updateUserInterface;

@end

