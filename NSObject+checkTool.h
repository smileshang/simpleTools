//
//  NSObject+checkTool.h
//  qilinbao
//
//  Created by freestyle on 16/6/15.
//  Copyright © 2016年 freestyle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (checkTool)

/**
 *  邮箱验证
 *
 *  @param email 邮箱
 *
 *  @return YES:正确  NO:失败
 */
+ (BOOL) checkForEmail:(NSString *)email;

/**
 *  手机号验证
 *
 *  @param phone 手机号
 *
 *  @return YES:正确  NO:失败
 */
+(BOOL)checkForMobilePhoneNo:(NSString *)mobilePhone;

/**
 *  电话号验证
 *
 *  @param phone 电话号
 *
 *  @return 结果
 */
+(BOOL)checkForPhoneNo:(NSString *)phone;

/**
 *  身份证号验证(15位 或 18位)
 *
 *  @param idCard 身份证号
 *
 *  @return YES:正确  NO:失败
 */
+(BOOL)checkForIdCard:(NSString *)idCard;

/**
 *  密码验证
 *
 *  @param shortest 最短长度
 *  @param longest  最长长度
 *  @param pwd      密码
 *
 *  @return 结果
 */
+(BOOL)checkForPasswordWithShortest:(NSInteger)shortest longest:(NSInteger)longest password:(NSString *)pwd;


/**
 *  由数字和26个英文字母组成的字符串
 *
 *  @param idCard 数据
 *
 *  @return 结果
 */
+ (BOOL) checkForNumberAndCase:(NSString *)data;


/**
 *  校验只能输入26位小写字母
 *
 *  @param 数据
 *
 *  @return 结果
 */
+ (BOOL) checkForLowerCase:(NSString *)data;

/**
 *  校验只能输入26位大写字母
 *
 *  @param data 数据
 *
 *  @return 结果
 */
+ (BOOL) checkForUpperCase:(NSString *)data;

/**
 *  校验只能输入由26个小写英文字母组成的字符串
 *
 *  @param data 字符串
 *
 *  @return 结果
 */
+ (BOOL) checkForLowerAndUpperCase:(NSString *)data;

/**
 *  是否含有特殊字符(%&’,;=?$\等)
 *
 *  @param data 数据
 *
 *  @return 结果
 */
+ (BOOL) checkForSpecialChar:(NSString *)data;

/**
 *  校验只能输入数字
 *
 *  @param number 数字
 *
 *  @return 结果
 */
+ (BOOL) checkForNumber:(NSString *)number;

/**
 *  校验只能输入n位的数字
 *
 *  @param length n位
 *  @param number 数字
 *
 *  @return 结果
 */
+ (BOOL) checkForNumberWithLength:(NSString *)length number:(NSString *)number;


@end
