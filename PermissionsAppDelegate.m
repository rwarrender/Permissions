//
//  PermissionsAppDelegate.m
//  Permissions
//
//  Created by Richard Warrender on 07/10/2009.
//  Copyright 2009 Richard Warrender. All rights reserved.
//

#import "PermissionsAppDelegate.h"

@implementation PermissionsAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application 
}
- (BOOL) applicationShouldTerminateAfterLastWindowClosed: (NSApplication *) theApplication
{
	return YES;
}

@end
