    //
//  AboutView.m
//  Hash+
//
//  Created by Sonny Fazio on September/4/2010 .
//  Copyright 2010 SonsterMedia. All rights reserved.
//

#import "AboutView.h"


@implementation AboutView


-(IBAction)dismiss{
	
	
	[self dismissModalViewControllerAnimated:YES];
	
}


-(IBAction)sendMail{
	NSString *url = [NSString stringWithString: @"mailto:contactrobot@sonstermedia.com"];
	[[UIApplication sharedApplication] openURL: [NSURL URLWithString: url]];
}

-(IBAction)openSupport{
	NSString *url = [NSString stringWithString: @"http://support.sonstermedia.com"];
	[[UIApplication sharedApplication] openURL: [NSURL URLWithString: url]];
}
-(IBAction)openWeb{
	NSString *url = [NSString stringWithString: @"http://sonstermedia.com"];
	[[UIApplication sharedApplication] openURL: [NSURL URLWithString: url]];
}
-(IBAction)openTwitter{
	NSString *url = [NSString stringWithString: @"http://mobile.twitter.com/sonstermedia"];
	[[UIApplication sharedApplication] openURL: [NSURL URLWithString: url]];
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
}


@end
