//
//  AppController.h
//  Permissions
//
//  Created by Richard Warrender on 07/10/2009.
//  Copyright 2009 Richard Warrender. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AppController : NSObject {

	IBOutlet NSTextField *octletField;
	IBOutlet NSTextField *termField;
	IBOutlet NSMatrix *checkboxMatrix;
	
}

- (IBAction)calculatePermission:(id)sender;

@end
