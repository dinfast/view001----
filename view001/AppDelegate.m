//
//  AppDelegate.m
//  view001
//
//  Created by 林德辉 on 13-5-8.
//  Copyright (c) 2013年 ibokan. All rights reserved.
//

#import "AppDelegate.h"
#import "ThirdViewController.h"
#import "FourViewController.h"

#import "ViewController.h"
#import "SecondViewControlViewController.h"

@implementation AppDelegate     //包含了6个代理的方法，ui application不能直接使用要通过代理

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{   NSLog(@"%s,程序将要启动",__FUNCTION__);
    //获取硬件设备的屏幕：UIScreen mainScreen
    //获取硬件设备屏幕大小：[UIScreen mainScreen] bounds]
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.viewController = [[[ViewController alloc] initWithNibName:@"ViewController" bundle:nil] autorelease];
//    SecondViewControlViewController *se=[[SecondViewControlViewController alloc]init];
//    self.window.rootViewController = self.viewController;
    ThirdViewController *t=[[ThirdViewController alloc]init];
     FourViewController *f=[[FourViewController alloc]init];
    UITabBarController*con=[[UITabBarController alloc]init];
    con.viewControllers=[NSArray arrayWithObjects:self.viewController,t,f, nil];

//    self.window.rootViewController =f;
     self.window.rootViewController = con;    //指定应用启动的根视图控制器
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application   
{  NSLog(@"%s,程序将要注销活动",__FUNCTION__);
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{   NSLog(@"%s,程序将要进入后台",__FUNCTION__);
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{   NSLog(@"%s,程序将要进前台",__FUNCTION__);
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{    NSLog(@"%s,程序将要活动",__FUNCTION__);
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{  NSLog(@"%s,程序将要种植",__FUNCTION__);
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
