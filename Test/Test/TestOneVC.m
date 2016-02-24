//
//  TestOneVC.m
//  Test
//
//  Created by imac on 16/2/18.
//  Copyright © 2016年 zhuofutong. All rights reserved.
//

#import "TestOneVC.h"
#import "UIView+RoundCorner.h"


@interface TestOneVC ()

@end

@implementation TestOneVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIFont *font = [UIFont systemFontOfSize:14];
    UILabel *lab = [self showLabelWithFrame:CGRectMake(0, 0, 100, 20) Content:@"实现一个label" Font:font];
    [self.view addSubview:lab];
    
    
    NSString *str = @"自适应lab,单行";
    CGSize size = [str sizeWithAttributes:@{NSFontAttributeName:font}];
    UILabel *labAdapt = [self showLabelWithFrame:CGRectMake(100, 100, size.width, size.height) Content:str Font:font];
    [self.view addSubview:labAdapt];
    
    NSString *strContent = @"根据label内容自适应行根据label内容自适应行根据label内容自适应行根据label内容自适应行根据label内容自适应行根据label内容自适应行";
    UILabel *labContent = [self showLabelWithFrame:CGRectMake(10, 200, 200, 20) Content:strContent Font:font];
    labContent.numberOfLines = 0;
    labContent.lineBreakMode = NSLineBreakByWordWrapping;
    CGSize sizeContent = [labContent sizeThatFits:CGSizeMake(labContent.frame.size.width, MAXFLOAT)];
    labContent.frame = CGRectMake(10, 200, 200, sizeContent.height);
    [self.view addSubview:labContent];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button markeRoundedCorner:20];
    [button setBackgroundColor:[UIColor yellowColor]];
    [button setFrame:CGRectMake(10, 30, 80, 40)];
    [self.view addSubview:button];
    
    NSMutableArray *array= [[NSMutableArray alloc]init];
    [array addObject:[NSNumber numberWithInt:3]];

}

- (UILabel *)showLabelWithFrame:(CGRect)frame Content:(NSString *)content Font:(UIFont *)font{
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    [label setTextColor:[UIColor blackColor]];
    [label setText:content];
    [label setFont:font];
    
    return label;
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
