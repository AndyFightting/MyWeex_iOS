//
//  MyComponent.m
//  MyWeex_iOS
//
//  Created by 苏贵明 on 16/12/30.
//  Copyright © 2016年 苏贵明. All rights reserved.
//

#import "MyComponent.h"
#import "MyView.h"

@implementation MyComponent{

    MyView* myView;

}
@synthesize src,resize,title;

- (instancetype)initWithRef:(NSString *)ref type:(NSString *)type
                     styles:(NSDictionary *)styles attributes:(NSDictionary *)attributes
                     events:(NSArray *)events weexInstance:(WXSDKInstance *)weexInstance{
    
    if (self = [super initWithRef:ref type:type styles:styles attributes:attributes events:events weexInstance:weexInstance]) {
        title = [WXConvert NSString:attributes[@"title"]];
        src = [WXConvert NSString:attributes[@"src"]];
        resize = [WXConvert UIViewContentMode:attributes[@"resize"]];
    }
    
    return self;
}

-(UIView*)loadView{
    myView = [MyView instance];
    return myView;
}

-(void)viewDidLoad{
    [myView refreshWithTitle:title imageUrl:src];
}



@end
