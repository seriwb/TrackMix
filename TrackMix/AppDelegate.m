//
//  AppDelegate.m
//  TrackMix
//
//  Created by セリ on 2014/10/31.
//  Copyright (c) 2014年 seri. All rights reserved.
//

#import "AppDelegate.h"
#import "Track.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application
	
	Track *aTrack = [[Track alloc] init];
	[self setTrack:aTrack];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
	// Insert code here to tear down your application
}

- (IBAction)mute:(id)sender {
	NSLog(@"received a mute: message");
}

- (void)updateUserInterface {
	float volume = [self.track volume];
	[self.textField setFloatValue:volume];
	[self.slider setFloatValue:volume];
}

- (IBAction)takeFloatValueForVolumeFrom:(id)sender {
	float newValue = [sender floatValue];
	[self.track setVolume:newValue];
	[self updateUserInterface];
}
@end
