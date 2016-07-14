//
//  UIBarButtonItem+BSExtention.h
//  百思不得其姐
//
//  Created by huangzhonghe on 16/7/14.
//  Copyright © 2016年 huangzhonghe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (BSExtention)
+(instancetype)itemWithImage:(NSString*)image ClickImage:(NSString*)clickImage Target:(id)target Action:(SEL)action;
@end
