//
//  Hash_AppDelegate.h
//  Hash+
//
//  Created by Sonny Fazio on September/3/2010 .
//  Copyright SonsterMedia 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Hash_ViewController;

@interface Hash_AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Hash_ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Hash_ViewController *viewController;

@end

