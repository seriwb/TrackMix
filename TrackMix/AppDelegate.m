//
//  AppDelegate.m
//  TrackMix
//
//  Created by セリ on 2014/10/31.
//  Copyright (c) 2014年 seri. All rights reserved.
//

#import "AppDelegate.h"
#import "Track.h"

@implementation AppDelegate

@synthesize textField = _textField;
@synthesize slider = _slider;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application
	
	Track *aTrack = [[Track alloc] init];
	[aTrack setVolume: 5.0];
	[self setTrack:aTrack];
	[self updateUserInterface];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
	// Insert code here to tear down your application
}

- (void)updateUserInterface {
	float volume = [self.track volume];
	[self.textField setFloatValue:volume];
	[self.slider setFloatValue:volume];
}

- (IBAction)mute:(id)sender {
	[self.track setVolume:0.0];
	[self updateUserInterface];
}

- (IBAction)takeFloatValueForVolumeFrom:(id)sender {
	float newValue = [sender floatValue];
	[self.track setVolume:newValue];
	[self updateUserInterface];
}
@end
