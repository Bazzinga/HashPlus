//
//  ResultsWindow.h
//  MD5
//
//  Created by Sonny Fazio on August/19/2010 .
//  Copyright 2010 SonsterMedia. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface ResultsWindow : UIViewController {

	
IBOutlet UITextView *md5_field;
IBOutlet UITextView *sha1_field;
IBOutlet UITextView *sha224_field;
IBOutlet UITextView *sha256_field;
IBOutlet UILabel *copied;
	NSString *md5results;	
	NSString *sha1results;
	NSString *sha224results;
	NSString *sha256results;
	NSString *original;
}
@property (nonatomic, retain) IBOutlet UITextView *results_field;
@property (nonatomic, retain) IBOutlet UILabel *copied;
@property (nonatomic, retain) NSString *md5results;
@property (nonatomic, retain) NSString *original;
@property (nonatomic, retain) NSString *sha1results;
@property (nonatomic, retain) NSString *sha224results;
@property (nonatomic, retain) NSString *sha256results;


-(IBAction)dismiss;
@end
