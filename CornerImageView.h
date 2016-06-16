//
//  CornerImageView.h
//  lalala
//
//  Created by LiCheng on 16/6/15.
//  Copyright © 2016年 freestyle. All rights reserved.
//
//
//  自定义 可视化imageView
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE  // 动态刷新

@interface CornerImageView : UIImageView

/**
 *  加上IBInspectable就可以可视化显示相关的属性
 */

/** 可视化设置边框宽度 */
@property (nonatomic, assign)IBInspectable CGFloat borderWidth;

/** 可视化设置边框颜色 */
@property (nonatomic, strong)IBInspectable UIColor *borderColor;

/** 可视化设置圆角 */
@property (nonatomic, assign)IBInspectable CGFloat cornerRadius;


@end
