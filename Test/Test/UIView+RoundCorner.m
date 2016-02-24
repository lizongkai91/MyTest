//
//  UIView+RoundCorner.m
//  Test
//
//  Created by imac on 16/2/23.
//  Copyright © 2016年 zhuofutong. All rights reserved.
//

#import "UIView+RoundCorner.h"

@implementation UIView (RoundCorner)

- (void)markeRoundedCorner:(CGFloat)cornerRadius{
    CALayer *roundedLayer = [self layer];
    [roundedLayer setMasksToBounds:YES];
    [roundedLayer setCornerRadius:cornerRadius];
}

@end
