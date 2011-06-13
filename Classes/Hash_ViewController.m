//
//  Hash_ViewController.m
//  Hash+
//
//  Created by Sonny Fazio on September/3/2010 .
//  Copyright SonsterMedia 2010. All rights reserved.
//

#import "Hash_ViewController.h"
#import "MD5Hasher.h"


@implementation Hash_ViewController
@synthesize input_field, md5_or_sha1;


- (BOOL)textFieldShouldReturn: (UITextField *)textField {
	[textField resignFirstResponder];
	return YES;
}


-(IBAction)editingEnded:(id)sender{
    [sender resignFirstResponder]; 
}



- (void)touchesEnded: (NSSet *)touches withEvent: (UIEvent *)event {
	for (UIView* view in self.view.subviews) {
		if ([view isKindOfClass:[UITextField class]])
			[view resignFirstResponder];
	}
}


- (void)viewDidLoad {
	[super viewDidLoad];
	
}

-(IBAction)startMD5Hash{
	
	[input_field resignFirstResponder];
	if ([input_field text] != nil){
		
		ResultsWindow *newWindow = [[ResultsWindow alloc] initWithNibName:@"ResultsWindow" bundle:nil];
		newWindow.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
		
		newWindow.sha1results = [MD5Hasher sha1:input_field.text];
		newWindow.md5results = [MD5Hasher md5:input_field.text];
		newWindow.sha224results = [MD5Hasher sha224:input_field.text];
		newWindow.sha256results = [MD5Hasher sha256:input_field.text];

		newWindow.original = input_field.text;
		
		[self presentModalViewController:newWindow animated:YES];
		
		
		[newWindow release];
	}
}



-(IBAction)launchAbout{
		AboutView *about = [[AboutView alloc] initWithNibName:@"AboutView" bundle:nil];
		about.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	
		
	[self presentModalViewController:about animated:YES];
		
		
		
	
	
}	

-(IBAction)launchWhatisaHash{
	WhatisaHash *what = [[WhatisaHash alloc] initWithNibName:@"WhatisaHash" bundle:nil];
	what.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	
	
	[self presentModalViewController:what animated:YES];
	
	
	
	
	
}	



- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
	[input_field release];
	[hashit release];
}

@end
