    //
//  WhatisaHash.m
//  Hash+
//
//  Created by Sonny Fazio on September/4/2010 .
//  Copyright 2010 SonsterMedia. All rights reserved.
//

#import "WhatisaHash.h"


@implementation WhatisaHash


-(IBAction)dismiss{
	
	
	[self dismissModalViewControllerAnimated:YES];
	
}




-(IBAction)openMD5{
	NSLog(@"Opening Web");
	NSString *url = [NSString stringWithString: @"http://en.wikipedia.org/wiki/MD5"];
	[[UIApplication sharedApplication] openURL: [NSURL URLWithString: url]];
}


- (void)viewDidLoad {
    [super viewDidLoad];
	
	[explain setBackgroundColor:[UIColor clearColor]];
	
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
	[explain release];
}


@end
