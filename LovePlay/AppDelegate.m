//
//  AppDelegate.m
//  LovePlay
//
//  Created by Yuns on 2017/6/19.
//  Copyright © 2017年 Yuns. All rights reserved.
//

#import "AppDelegate.h"
#import "MainTabBarController.h"
#import <Network/HttpRequest.h>

@interface AppDelegate ()

@end

@implementation AppDelegate

NSString * const BaseURL = @"http://i.play.163.com";

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    [[HttpRequest sharedInstance] configBaseURL:BaseURL];
    
    [self setupMainController];
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)setupMainController
{
    self.window.rootViewController = [[MainTabBarController alloc] init];
}


@end
