//
//  CornerView.m
//  lalala
//
//  Created by LiCheng on 16/6/15.
//  Copyright © 2016年 freestyle. All rights reserved.
//

#import "CornerView.h"

@implementation CornerView


#pragma mark - 设置边框宽度
- (void)setBorderWidth:(CGFloat)borderWidth {
    
    if (borderWidth < 0) return;
    
    self.layer.borderWidth = borderWidth;
}

#pragma mark - 设置边框颜色
- (void)setBorderColor:(UIColor *)borderColor {
    
    self.layer.borderColor = borderColor.CGColor;
}

#pragma mark - 设置圆角
- (void)setCornerRadius:(CGFloat)cornerRadius {
    
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = cornerRadius > 0;
}

@end
