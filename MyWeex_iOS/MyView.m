//
//  MyView.m
//  MyWeex_iOS
//
//  Created by 苏贵明 on 16/12/30.
//  Copyright © 2016年 苏贵明. All rights reserved.
//

#import "MyView.h"

@interface MyView ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation MyView

+(instancetype)instance{
    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"MyView" owner:nil options:nil];
    MyView* myView = (MyView*)views[0];

    return myView;
}

-(void)refreshWithTitle:(NSString*)title imageUrl:(NSString*)url{
    [_titleLabel setText:title];
    [_imageView sd_setImageWithURL:[NSURL URLWithString:url]];
}

@end
