//
//  UIImage+resizeImage.m
//
//
//  Created by admin on 15/9/9.
//  Copyright © 2015年 freestyle. All rights reserved.
//

#import "UIImage+resizeImage.h"

@implementation UIImage (resizeImage)

- (UIImage *) resizeImage:(UIImage *) img WithTop:(CGFloat) top WithLeft:(CGFloat) left WithBottom:(CGFloat) bottom WithRight:(CGFloat) right
{
    UIImage * resizeImg = [img resizableImageWithCapInsets:UIEdgeInsetsMake(self.size.height * top, self.size.width * left, self.size.height * bottom, self.size.width * right) resizingMode:UIImageResizingModeStretch];
    
    return resizeImg;
}


@end
