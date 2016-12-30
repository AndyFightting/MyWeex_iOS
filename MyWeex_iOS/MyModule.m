//
//  MyModule.m
//  MyWeex_iOS
//
//  Created by 苏贵明 on 16/12/30.
//  Copyright © 2016年 苏贵明. All rights reserved.
//

#import "MyModule.h"

@implementation MyModule

@synthesize weexInstance;

WX_EXPORT_METHOD(@selector(showAlert:callback:))
-(void)showAlert:(NSString*) msg callback:(WXModuleCallback)callback{
    UIAlertView* alert = [[UIAlertView alloc]initWithTitle:@"提示" message:msg delegate:nil cancelButtonTitle:nil otherButtonTitles:@"确定", nil];
    [alert show];
    
    callback(@{@"msg":msg});// we 回调
}

@end
