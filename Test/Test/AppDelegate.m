//
//  AppDelegate.m
//  Test
//
//  Created by imac on 16/2/18.
//  Copyright © 2016年 zhuofutong. All rights reserved.
//

#import "AppDelegate.h"
#import "BaseViewController.h"
#import "TestOneVC.h"
#import "TestTwoCtrl.h"
#import "TestThreeCtrl.h"
#import "TestFourCtrl.h"

#define PNGIMAGEWithName(ImageName) [UIImage imageNamed:ImageName]

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    [application setStatusBarStyle:UIStatusBarStyleLightContent animated:NO];
    
//    BaseViewController *baseVC = [[BaseViewController alloc] init];
//    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:baseVC];
//    self.window.rootViewController = nav;
    
    TestOneVC *oneVc = [[TestOneVC alloc] init];
    UINavigationController *navOne = [[UINavigationController alloc] initWithRootViewController:oneVc];
    navOne.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"首页" image:[PNGIMAGEWithName(@"image1") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] tag:101];
    [navOne.tabBarItem setSelectedImage:[PNGIMAGEWithName(@"image1") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    TestTwoCtrl *twoVC = [[TestTwoCtrl alloc] init];
    UINavigationController *navTwo = [[UINavigationController alloc] initWithRootViewController:twoVC];
    navTwo.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"首页" image:[PNGIMAGEWithName(@"image1") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] tag:102];
    [navTwo.tabBarItem setSelectedImage:[PNGIMAGEWithName(@"image1") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    TestThreeCtrl *testThreeVC = [[TestThreeCtrl alloc] init];
    UINavigationController *threeNav = [[UINavigationController alloc] initWithRootViewController:testThreeVC];
    threeNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"首页" image:[PNGIMAGEWithName(@"gife-icon") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] tag:101];
    [threeNav.tabBarItem setSelectedImage:[PNGIMAGEWithName(@"gife-icon") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    TestFourCtrl *fourVc = [[TestFourCtrl alloc] init];
    UINavigationController *navFour = [[UINavigationController alloc] initWithRootViewController:fourVc];
    navFour.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"首页" image:[PNGIMAGEWithName(@"image5") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] tag:101];
    [navFour.tabBarItem setSelectedImage:[PNGIMAGEWithName(@"image5") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = @[navOne,navTwo,threeNav,navFour];
    
    self.window.rootViewController = tabBarController;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
