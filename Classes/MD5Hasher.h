//
//  MD5Hasher.h
//  MD5
//
//  Created by Sonny Fazio on August/18/2010 .
//  Copyright 2010 SonsterMedia. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MD5Hasher : NSObject {

	
	
}
+(NSString *)md5:(NSString *)str;
+(NSString *)sha1:(NSString *)str;
+(NSString *)sha224:(NSString *)str;
+(NSString *)sha256:(NSString *)str;
@end
