//
//  MyTextView.m
//  HashEngine
//
//  Created by Sonny Fazio on August/22/2010 .
//  Copyright 2010 SonsterMedia. All rights reserved.
//

#import "MyTextView.h"


@implementation MyTextView

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
	pasteboard.string = self.text;
	
	UIAlertView *alert = [[[UIAlertView alloc] initWithTitle:@"Hash Copied" message:@"This hash has been added to your clipboard. Just like that." delegate:self cancelButtonTitle:nil otherButtonTitles:nil] autorelease];
    [alert addButtonWithTitle:@"Cool"];
    [alert show];
	
	
}


@end
