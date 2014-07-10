//
//  AppDelegate.m
//  UITabBarController
//
//  Created by Louis on 14-7-10.
//  Copyright (c) 2014年 Louis. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourViewController.h"
#import "FiveViewController.h"
#import "SixViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    // 1. 添加那6个viewcontroller
    FirstViewController *firtVC = [[FirstViewController alloc]init];
    SecondViewController *secondVC = [[SecondViewController alloc]init];
    ThirdViewController *thirdVC = [[ThirdViewController alloc]init];
    FourViewController *fourVC = [[FourViewController alloc]init];
    FiveViewController *fiveVC = [[FiveViewController alloc]init];
    SixViewController *sixVC = [[SixViewController alloc]init];
    
    // 2.   添加tabBarController
    UITabBarController *tabBarController = [[UITabBarController alloc]init];
    tabBarController.viewControllers = [NSArray arrayWithObjects:firtVC, secondVC, thirdVC, fourVC, fiveVC, sixVC, nil];
    
    // 3.1. 设置背景图片
    [tabBarController.tabBar setBackgroundImage:[UIImage imageNamed:@"tabbar_background.png"]];
    
    // 3.2. 设置每个Item的图片
    [firtVC.tabBarItem setImage:[UIImage imageNamed:@"tabbar_home.png"]];
    [secondVC.tabBarItem setImage:[UIImage imageNamed:@"tabbar_message_center.png"]];
    [thirdVC.tabBarItem setImage:[UIImage imageNamed:@"tabbar_profile_selected.png"]];
    [fourVC.tabBarItem setImage:[UIImage imageNamed:@"tabbar_discover.png"]];
//    [fiveVC.tabBarItem setImage:[UIImage imageNamed:@"tabbar_more.png"]];
//    fiveVC.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemMore tag:4];
    fiveVC.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemHistory tag:4];
    sixVC.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemDownloads tag:5];
    
    // 3.3 设置每个Item文字
    firtVC.title = @"首页";
    secondVC.title = @"消息";
    thirdVC.title = @"我";
    fourVC.title = @"广场";
    fiveVC.title = @"历史";
    sixVC.title = @"下载";
    
    // 3.4. 设置数量图标
    firtVC.tabBarItem.badgeValue = @"10";
    secondVC.tabBarItem.badgeValue = @"meme";
    thirdVC.tabBarItem.badgeValue = @"中文";
    
    // 3.5 设置选中时图标的颜色变化, 貌似这两个效果没有多大区别
    tabBarController.tabBar.tintColor = [UIColor greenColor];
    tabBarController.tabBar. selectedImageTintColor = [UIColor colorWithRed:231/255.0 green:141/255.0 blue:41/255.0 alpha:1.0];
    
    // 3.6 设置默认选中的item
    tabBarController.selectedIndex = 3;
    
    // 4. 添加根控制器
    self.window.rootViewController =  tabBarController;
    
    // 5. 添加代理
    tabBarController.delegate = self;
    
    [self.window makeKeyAndVisible];
    return YES;
}

#pragma mark - 设置能否被选中和确定那个按钮被选中

// 确定按钮是否可以被选中
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    return YES; // 都可以被选中
}

// 那个item被选中了？
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    NSLog(@"被选中的item是:%@",viewController);
}

#pragma mark - 自定义调节item位置
// 开始编辑item位置
- (void)tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray *)viewControllers
{
    NSLog(@"编辑前controllers:%@", viewControllers);
}

// 点击了Done即将完成位置编辑
- (void)tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
    NSLog(@"即将完成编辑controllers:%@", viewControllers);
}

// 完成编辑
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
    NSLog(@"完成编辑controllers:%@", viewControllers);
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
