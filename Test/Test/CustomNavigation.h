//
//  CustomNavigation.h
//  Test
//
//  Created by imac on 16/2/18.
//  Copyright © 2016年 zhuofutong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomNavigation : UIView

typedef enum{
    customEventClickLBtn1 ,//点击了最左边的按钮
    customEventClickRBtn1 , //最右边的按钮
    customEventClickLBtn2 ,//点击了左边第二个按钮
    customEventClickRBtn2 //点击了右边最靠左的按钮
}CustomEventType;

//类型   返回类型  函数名称  参数
typedef void(^CusomBlock)(NSInteger index);


- (void)CustomNavigationTitle:(UINavigationController *)nav;

- (void)CustomNavigationItem:(UINavigationItem *)item Block:(CusomBlock)block;

@end
