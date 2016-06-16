//
//  NSString+security.h
//  04-数据加密
//
//  Created by teacher on 15/10/9.
//  Copyright © 2015年 teacher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (security)

- (NSString*) stringByMD5;

- (NSString*) stringBySHA1;
@end
