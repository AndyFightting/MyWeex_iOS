//
//  MyModule.h
//  MyWeex_iOS
//
//  Created by 苏贵明 on 16/12/30.
//  Copyright © 2016年 苏贵明. All rights reserved.
//


@interface MyModule : NSObject<WXModuleProtocol>

-(void)showAlert:(NSString*) msg callback:(WXModuleCallback)callback;

@end
