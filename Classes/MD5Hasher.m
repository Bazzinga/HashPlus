//
//  MD5Hasher.m
//  MD5
//
//

#import "MD5Hasher.h"
#import <CommonCrypto/CommonDigest.h>

@implementation MD5Hasher

+(NSString *)md5:(NSString *)str {
	
	const char *cStr = [str UTF8String];
	unsigned char result[16];
	CC_MD5( cStr, strlen(cStr), result );
	return [NSString stringWithFormat:
			@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
			result[0], result[1], result[2], result[3], 
			result[4], result[5], result[6], result[7],
			result[8], result[9], result[10], result[11],
			result[12], result[13], result[14], result[15]
			];	
}

+(NSString *)sha1:(NSString *)str {
		const char *cStr = [str UTF8String];
		unsigned char result[CC_SHA1_DIGEST_LENGTH];
		CC_SHA1(cStr, strlen(cStr), result);
		NSString *s = [NSString  stringWithFormat:
					   @"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
					   result[0], result[1], result[2], result[3], result[4],
					   result[5], result[6], result[7],
					   result[8], result[9], result[10], result[11], result[12],
					   result[13], result[14], result[15],
					   result[16], result[17], result[18], result[19]
					   ];
		
		return [s lowercaseString];
}
	
+(NSString *)sha256:(NSString *)str{
	unsigned char result[32];
	CC_SHA256([str UTF8String],
			  [str lengthOfBytesUsingEncoding:NSUTF8StringEncoding], 
			  result);
	
	NSString *s = [NSString  stringWithFormat:
				   @"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
				   result[0], result[1], result[2], result[3], result[4],
				   result[5], result[6], result[7],
				   result[8], result[9], result[10], result[11], result[12],
				   result[13], result[14], result[15],
				   result[16], result[17], result[18], result[19], result[20], 
				   result[21], result[22], result[23], result[24], result[25], 
				   result[26], result[27], result[28], result[29], result[30], 
				   result[31] 
				   ];
	
	return [s lowercaseString];
}
+(NSString *)sha224:(NSString *)str{
		unsigned char result[32];
		CC_SHA224([str UTF8String],
				  [str lengthOfBytesUsingEncoding:NSUTF8StringEncoding], 
				  result);
		
		NSString *s = [NSString  stringWithFormat:
					   @"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
					   result[0], result[1], result[2], result[3], result[4],
					   result[5], result[6], result[7],
					   result[8], result[9], result[10], result[11], result[12],
					   result[13], result[14], result[15],
					   result[16], result[17], result[18], result[19], result[20], 
					   result[21], result[22], result[23], result[24], result[25], 
					   result[26], result[27]
					   ];
		
		return [s lowercaseString];
}

@end