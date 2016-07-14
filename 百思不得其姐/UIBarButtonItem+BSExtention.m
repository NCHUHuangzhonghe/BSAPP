//
//  UIBarButtonItem+BSExtention.m
//  百思不得其姐
//
//  Created by huangzhonghe on 16/7/14.
//  Copyright © 2016年 huangzhonghe. All rights reserved.
//

#import "UIBarButtonItem+BSExtention.h"

@implementation UIBarButtonItem (BSExtention)
+(instancetype)itemWithImage:(NSString *)image ClickImage:(NSString *)clickImage Target:(id)target Action:(SEL)action{
    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:clickImage] forState:UIControlStateHighlighted];
    button.size=button.currentImage.size;
    return [[self alloc] initWithCustomView:button];
}
@end
