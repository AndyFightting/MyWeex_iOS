/**
 * Created by Weex.
 * Copyright (c) 2016, Alibaba, Inc. All rights reserved.
 *
 * This source code is licensed under the Apache Licence 2.0.
 * For the full copyright and license information,please view the LICENSE file in the root directory of this source tree.
 */

#import "AppDelegate.h"
#import "WXDemoViewController.h"

#define MY_URL @"file:///Users/suguiming/Desktop/GithubLocal/MyWeex_iOS/MyWeex_iOS/js/index.js"

@interface AppDelegate ()
@end

@implementation AppDelegate

#pragma mark
#pragma mark application

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    [WXSDKEngine initSDKEnviroment];
    
    self.window.rootViewController = [self demoController];
    [self.window makeKeyAndVisible];
    
    
    return YES;
}

- (UIViewController *)demoController{
    UIViewController *demo = [[WXDemoViewController alloc] init];
    ((WXDemoViewController *)demo).url = [NSURL URLWithString:MY_URL];
    return demo;
}
@end
