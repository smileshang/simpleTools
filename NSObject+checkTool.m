//
//  NSObject+checkTool.m
//  qilinbao
//
//  Created by freestyle on 16/6/15.
//  Copyright © 2016年 freestyle. All rights reserved.
//

#import "NSObject+checkTool.h"

@implementation NSObject (checkTool)

#pragma mark - 邮箱校验
+(BOOL)checkForEmail:(NSString *)email{
    
    NSString *regEx = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    return [self baseCheckForRegEx:regEx data:email];
}

#pragma mark - 验证手机号
+(BOOL)checkForMobilePhoneNo:(NSString *)mobilePhone{
    
    NSString *regEx = @"^1[3|4|5|7|8][0-9]\\d{8}$";
    return [self baseCheckForRegEx:regEx data:mobilePhone];
}
#pragma mark - 验证电话号
+(BOOL)checkForPhoneNo:(NSString *)phone{
    NSString *regEx = @"^(\\d{3,4}-)\\d{7,8}$";
    return [self baseCheckForRegEx:regEx data:phone];
}

#pragma mark - 身份证号验证
+ (BOOL) checkForIdCard:(NSString *)idCard{
    
    NSString *regEx = @"\\d{14}[[0-9],0-9xX]";
    return [self baseCheckForRegEx:regEx data:idCard];
}
#pragma mark - 密码校验
+(BOOL)checkForPasswordWithShortest:(NSInteger)shortest longest:(NSInteger)longest password:(NSString *)pwd{
    NSString *regEx =[NSString stringWithFormat:@"^[a-zA-Z0-9]{%ld,%ld}+$", shortest, longest];
    return [self baseCheckForRegEx:regEx data:pwd];
}

//----------------------------------------------------------------------

#pragma mark - 由数字和26个英文字母组成的字符串
+ (BOOL) checkForNumberAndCase:(NSString *)data{
    NSString *regEx = @"^[A-Za-z0-9]+$";
    return [self baseCheckForRegEx:regEx data:data];
}

#pragma mark - 小写字母
+(BOOL)checkForLowerCase:(NSString *)data{
    NSString *regEx = @"^[a-z]+$";
    return [self baseCheckForRegEx:regEx data:data];
}

#pragma mark - 大写字母
+(BOOL)checkForUpperCase:(NSString *)data{
    NSString *regEx = @"^[A-Z]+$";
    return [self baseCheckForRegEx:regEx data:data];
}
#pragma mark - 26位英文字母
+(BOOL)checkForLowerAndUpperCase:(NSString *)data{
    NSString *regEx = @"^[A-Za-z]+$";
    return [self baseCheckForRegEx:regEx data:data];
}

#pragma mark - 特殊字符
+ (BOOL) checkForSpecialChar:(NSString *)data{
    NSString *regEx = @"[^%&',;=?$\x22]+";
    return [self baseCheckForRegEx:regEx data:data];
}

#pragma mark - 只能输入数字
+ (BOOL) checkForNumber:(NSString *)number{
    NSString *regEx = @"^[0-9]*$";
    return [self baseCheckForRegEx:regEx data:number];
}

#pragma mark - 校验只能输入n位的数字
+ (BOOL) checkForNumberWithLength:(NSString *)length number:(NSString *)number{
    NSString *regEx = [NSString stringWithFormat:@"^\\d{%@}$", length];
    return [self baseCheckForRegEx:regEx data:number];
}


#pragma mark - 私有方法
/**
 *  基本的验证方法
 *
 *  @param regEx 校验格式
 *  @param data  要校验的数据
 *
 *  @return YES:成功 NO:失败
 */
+(BOOL)baseCheckForRegEx:(NSString *)regEx data:(NSString *)data{
    
    NSPredicate *card = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regEx];
    
    if (([card evaluateWithObject:data])) {
        return YES;
    }
    return NO;
}


@end
