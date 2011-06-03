//
//  PermissionsAppDelegate.h
//  Permissions
//
//  Created by Richard Warrender on 07/10/2009.
//  Copyright 2009 Richard Warrender. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PermissionsAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
