//
//  AppController.m
//  Permissions
//
//  Created by Richard Warrender on 07/10/2009.
//  Copyright 2009 Richard Warrender. All rights reserved.
//

#import "AppController.h"


@implementation AppController

- (IBAction)calculatePermission:(id)sender
{
	
	int i,octal = 0;
	char *permission[8] = {"___", "__x", "_w_", "_wx", "r__", "r_x", "rw_", "rwx"};
	char text[11] = "-";
	
    // Loop through each row (user) - User, Group, All
	for(i=0; i<3; i++) {
		
        // Loop through each column (permission bit) and OR up the results - r=4, w=2, x=1
		int c, row = 0;
		for(c = 0; c < 3; c++) {
            
            /*
               We get our checkbox toggle bit and left shift to move it along a column.
               Next we do a bitwise OR which allows us to mask it. The result is 1 if the first bit
               is 1 OR the second bit is 1 OR both bits are set to 1. Else, the result is 0
             
               e.g. 0 << 0 = 00000000 = 0
                    1 << 1 = 00000010 = 2
                    1 << 2 = 00000100 = 4
             */
            bool isTicked = [[sender cellAtRow:i column: c] state];
			row |= (isTicked << c); 
		}
		
        // Concat this string row to the last. We want a big permissions char array :)
		strcat(text, permission[row]);
		
		row *= (int) pow(10, 2-i); // Shift row along into decimal 10's
		octal += row;
	}
		
	[octletField setIntValue: octal];
	[termField setStringValue: [NSString stringWithCString:text encoding:NSASCIIStringEncoding]];
}

@end
