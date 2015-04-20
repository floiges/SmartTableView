//
//  LYDAppDelegate.m
//  SmartTableViewSample
//
//  Created by 224 on 15/4/20.
//  Copyright (c) 2015年 zoomlgd. All rights reserved.
//

#import "LYDAppDelegate.h"
#import "LYDTableViewController.h"

@implementation LYDAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    LYDTableViewController *twoTone = [[LYDTableViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:twoTone];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
    return YES;
}
                        
@end
