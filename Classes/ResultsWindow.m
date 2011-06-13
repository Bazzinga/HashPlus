//
//  ResultsWindow.m
//  MD5
//
//  Created by Sonny Fazio on August/19/2010 .
//  Copyright 2010 SonsterMedia. All rights reserved.
//

#import "ResultsWindow.h"
#import "Hash_ViewController.h"
#import <QuartzCore/QuartzCore.h>

@implementation ResultsWindow
@synthesize results_field, copied, md5results, sha1results,original, sha224results,sha256results;


- (void)viewDidLoad {
    [super viewDidLoad];

	
	
	md5_field.layer.cornerRadius = 5;
	sha1_field.layer.cornerRadius = 5;
	sha224_field.layer.cornerRadius = 5;
	sha256_field.layer.cornerRadius = 5;
	//md5_field.layer.clipsToBounds = YES;
	
	
	NSLog(@"SHA1:%@", sha1results);
	NSLog(@"SHA224:%@", sha224results);
	NSLog(@"SHA256:%@", sha256results);
	
if (md5results != nil)
	{
	md5_field.text = md5results;

	}


if (sha1results != nil)
{
	sha1_field.text = sha1results;

}
	
if (sha224results != nil)
{
	sha224_field.text = sha224results;
		
}
if (sha256results != nil)
	{
		sha256_field.text = sha256results;
		
	}
	
	
	
}






-(IBAction)dismiss{
	
	
[self dismissModalViewControllerAnimated:YES];
	
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
   }


- (void)dealloc {
	
    [super dealloc];
	[results_field release];
	[copied release];
	[md5_field release];
	[sha1_field release];
	[md5results release];
	[sha1results release];
	[original release];
	[sha224results release];
	[sha256results release];
	[sha224_field release];
	[sha256_field release];
}


@end
