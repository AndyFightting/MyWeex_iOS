//
//  MyView.h
//  MyWeex_iOS
//
//  Created by 苏贵明 on 16/12/30.
//  Copyright © 2016年 苏贵明. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyView : UIView

+(instancetype)instance;

-(void)refreshWithTitle:(NSString*)title imageUrl:(NSString*)url;

@end
