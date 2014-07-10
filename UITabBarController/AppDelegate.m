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

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    // 1. 添加那5个viewcontroller
    FirstViewController *firtVC = [[FirstViewController alloc]init];
    
    SecondViewController *secondVC = [[SecondViewController alloc]init];
    
    ThirdViewController *thirdVC = [[ThirdViewController alloc]init];
    
    FourViewController *fourVC = [[FourViewController alloc]init];
    
    FiveViewController *fiveVC = [[FiveViewController alloc]init];
    
    // 2.   添加tabBarController
    UITabBarController *tabBarController = [[UITabBarController alloc]init];
    tabBarController.viewControllers = [NSArray arrayWithObjects:firtVC, secondVC, thirdVC, fourVC, fiveVC, nil];
    self.window.rootViewController =  tabBarController;
    
    [self.window makeKeyAndVisible];
    return YES;
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
