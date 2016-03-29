//
//  BaseViewController.m
//  Test
//
//  Created by imac on 16/2/18.
//  Copyright © 2016年 zhuofutong. All rights reserved.
//

#import "BaseViewController.h"
#import "CustomNavigation.h"
#import "TestOneVC.h"

@interface BaseViewController ()

//@property (nonatomic,strong) NSMutableString *strongStr;

@end

@implementation BaseViewController{
    CustomNavigation *customNav;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view setBackgroundColor:[UIColor whiteColor]];
    customNav = [[CustomNavigation alloc] init];
    [customNav CustomNavigationTitle:self.navigationController];
    [customNav CustomNavigationItem:self.navigationItem Block:^(NSInteger index) {

//        if (index == customEventClickLBtn2)
//        NSLog(@"index = %ld",index);
//        
//        TestOneVC *testOneVC = [[TestOneVC alloc] init];
//        [self.navigationController pushViewController:testOneVC animated:YES];
        
        [self setCustomNavigationBack];
    }];
    
//    NSString * str;
//    NSString * text =[str copy];
//    str = @"text1";
//    NSLog(@"text = %@",text);
    
//    NSMutableString *str1;
//    NSMutableString *strongStr = [str1 copy];
//    str1 = [NSMutableString stringWithFormat:@"12345"];
//    NSLog(@"_strongStr = %@ ,%p , %p",strongStr,strongStr,str1);
    
    NSString *string = @"ddd";
    NSLog(@"%p",string);
    NSString *stringCopy = [string copy];
    NSLog(@"%p",stringCopy);
    NSMutableString *stringDCopy = [string mutableCopy];
    NSLog(@"%p,%p,%p",string,stringCopy,stringDCopy);
    
//    NSString *text = @"123";
//    NSLog(@"%p",text);
//    NSString *str = [text copy];
//    NSLog(@"%p",str);
//    str = @"345";
//    NSLog(@"%p,%p",str,text);
    
    NSArray *mutableAry = @[@"111",@"222",@"333",@"444"];
    NSString *aryStr = mutableAry[1];
    aryStr = @"555";
    NSLog(@"mutableAry = %@",mutableAry);
}


- (UIButton *)showButton{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(0, 0, 80, 40)];
    [button setBackgroundColor:[UIColor redColor]];
    
    return button;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
