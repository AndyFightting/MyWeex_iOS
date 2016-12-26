/**
 * Created by Weex.
 * Copyright (c) 2016, Alibaba, Inc. All rights reserved.
 *
 * This source code is licensed under the Apache Licence 2.0.
 * For the full copyright and license information,please view the LICENSE file in the root directory of this source tree.
 */

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController
@synthesize instance,weexView;


- (void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    [self renderView];
}

- (void)dealloc{
    [instance destroyInstance];
}

- (void)renderView{
    CGFloat width = self.view.frame.size.width;
    CGFloat height = self.view.frame.size.height;
    
    [instance destroyInstance];
    instance = [[WXSDKInstance alloc] init];
    instance.viewController = self;
    instance.frame = CGRectMake(0, 0, width,height);
    
    __weak typeof(self) weakSelf = self;
    instance.onCreate = ^(UIView *view) {
        [weakSelf.weexView removeFromSuperview];
        weakSelf.weexView = view;
        [weakSelf.view addSubview:weakSelf.weexView];
    };
    
    instance.onFailed = ^(NSError *error) {
       NSLog(@"%@", @"Render Failed...");
    };
    
    instance.renderFinish = ^(UIView *view) {
         NSLog(@"%@", @"Render Finish...");
        
    };
    
    instance.updateFinish = ^(UIView *view) {
        NSLog(@"%@", @"Update Finish...");
    };
    
    NSString* url = [NSString stringWithFormat:@"%@%@",HOST,@"index.js"];
    [instance renderWithURL:[NSURL URLWithString:url] options:nil data:nil];
}



@end
