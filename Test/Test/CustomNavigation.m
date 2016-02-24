//
//  CustomNavigation.m
//  Test
//
//  Created by imac on 16/2/18.
//  Copyright © 2016年 zhuofutong. All rights reserved.
//
/**
 *  默认使用的字体
 */
#define SYSTEMFONTName      @"AriaLMT"

/**
 *  NavigationController的字体大小™
 */
#define NAV_FONTSize        20
#import "CustomNavigation.h"

@implementation CustomNavigation{
    CusomBlock backBlock;
}

- (void)CustomNavigationTitle:(UINavigationController *)navi{
    
    [navi.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName,[UIFont fontWithName:SYSTEMFONTName size:NAV_FONTSize],NSFontAttributeName,nil]];
}

- (void)CustomNavigationItem:(UINavigationItem *)item Block:(CusomBlock)block{
    backBlock = block;
    UIButton *button = [self showButton];
    [button addTarget:self action:@selector(selectorBack) forControlEvents:UIControlEventTouchUpInside];
    item.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
}

- (void)selectorBack{
    backBlock(customEventClickLBtn1);
}

- (UIButton *)showButton{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(0, 0, 80, 40)];
    [button setBackgroundColor:[UIColor redColor]];
    
    return button;
}



@end
