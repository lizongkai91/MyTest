//
//  TestTwoCtrl.m
//  Test
//
//  Created by imac on 16/2/25.
//  Copyright © 2016年 zhuofutong. All rights reserved.
//

#import "TestTwoCtrl.h"
#import "TestFourCtrl.h"

@interface TestTwoCtrl ()

@end

@implementation TestTwoCtrl

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
    UIButton *button = [self showButton];
    [button addTarget:self action:@selector(selectorbutton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)selectorbutton{
    self.tabBarController.selectedIndex = 2;
}

- (UIButton *)showButton{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(100, 100, 80, 40)];
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
