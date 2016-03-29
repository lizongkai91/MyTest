//
//  TestFourCtrl.m
//  Test
//
//  Created by imac on 16/2/25.
//  Copyright © 2016年 zhuofutong. All rights reserved.
//

#import "TestFourCtrl.h"

@interface TestFourCtrl ()

@end

@implementation TestFourCtrl

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
   NSString *tempA = @"123.1212";
    int intString = [tempA intValue];
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
