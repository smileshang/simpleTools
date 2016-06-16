//
//  NSString+security.m
//  04-数据加密
//
//  Created by teacher on 15/10/9.
//  Copyright © 2015年 teacher. All rights reserved.
//

#import "NSString+security.h"
#include <CommonCrypto/CommonDigest.h>

@implementation NSString (security)

- (NSString*) stringByMD5
{
    const char * cStr = self.UTF8String;
    
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    
    CC_MD5(cStr, (unsigned int)strlen(cStr), digest);
    
    NSMutableString * str = [NSMutableString string];
    
    for ( int i=0; i<CC_MD5_DIGEST_LENGTH; i++) {
        [str appendFormat:@"%02x", digest[i]];
    }
    
    return str;
}

- (NSString*) stringBySHA1
{
    const char * cStr = self.UTF8String;
    
    unsigned char digest[CC_SHA1_DIGEST_LENGTH];
    
    CC_SHA1(cStr, (unsigned int)strlen(cStr), digest);
    
    NSMutableString * str = [NSMutableString string];
    
    for ( int i=0; i<CC_SHA1_DIGEST_LENGTH; i++) {
        [str appendFormat:@"%02x", digest[i]];
    }
    
    return str;
}






@end












