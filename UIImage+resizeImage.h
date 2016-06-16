//
//  UIImage+resizeImage.h
//
//
//  Created by admin on 15/9/9.
//  Copyright © 2015年 freestyle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (resizeImage)

- (UIImage *) resizeImage:(UIImage *) img WithTop:(CGFloat) top WithLeft:(CGFloat) left WithBottom:(CGFloat) bottom WithRight:(CGFloat) right;

@end
