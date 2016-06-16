//
//  UIControl+UIControl_buttonCon.h
//  qilinbao
//
//  Created by freestyle on 16/6/15.
//  Copyright © 2016年 freestyle. All rights reserved.
//

#import <UIKit/UIKit.h>

#define defaultInterval .5  //默认时间间隔

@interface UIControl (UIControl_buttonCon)

@property (nonatomic, assign) NSTimeInterval timeInterval; // 用这个给重复点击加间隔
@property (nonatomic, assign) BOOL isIgnoreEvent; //YES 不允许点击   NO 允许点击

@end
