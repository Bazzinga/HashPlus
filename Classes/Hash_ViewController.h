//
//  Hash_ViewController.h
//  Hash+
//
//  Created by Sonny Fazio on September/3/2010 .
//  Copyright SonsterMedia 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ResultsWindow.h"
#import "AboutView.h"
#import "WhatisaHash.h"

@interface Hash_ViewController : UIViewController  <UITextFieldDelegate> {
	
	IBOutlet UITextField *input_field;
	IBOutlet UIButton *hashit;
	IBOutlet UISwitch *md5_or_sha1;
	
}
@property (nonatomic, retain) IBOutlet UITextField *input_field;
@property (nonatomic, retain) IBOutlet UISwitch *md5_or_sha1;
-(IBAction)startMD5Hash;
-(IBAction)launchAbout;
-(IBAction)launchWhatisaHash;
- (void)touchesEnded: (NSSet *)touches withEvent: (UIEvent *)event;

@end
