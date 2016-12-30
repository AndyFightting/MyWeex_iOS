/**
 * Created by Weex.
 * Copyright (c) 2016, Alibaba, Inc. All rights reserved.
 *
 * This source code is licensed under the Apache Licence 2.0.
 * For the full copyright and license information,please view the LICENSE file in the root directory of this source tree.
 */

#import "AppDelegate.h"
#import "ViewController.h"
#import "WXImgLoaderDefaultImpl.h"
#import "MyComponent.h"
#import "MyModule.h"

@interface AppDelegate ()
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;

    [WXSDKEngine initSDKEnviroment];
    
    [WXSDKEngine registerHandler:[WXImgLoaderDefaultImpl new] withProtocol:@protocol(WXImgLoaderProtocol)];
    [WXSDKEngine registerComponent:@"my_view" withClass:[MyComponent class]];
    [WXSDKEngine registerModule:@"my_module" withClass:[MyModule class]];//we 要引用 var eventModule = require('@weex-module/my_module');
    
    UINavigationController* nav = [[UINavigationController alloc]initWithRootViewController:[[ViewController alloc] init]];
    [nav.view sendSubviewToBack:nav.navigationBar]; //隐藏导航栏且不影响手势返回

    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
    return YES;
}


@end
