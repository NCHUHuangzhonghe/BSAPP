//
//  BSTabBar.m
//  百思不得其姐
//
//  Created by huangzhonghe on 16/7/14.
//  Copyright © 2016年 huangzhonghe. All rights reserved.
//

#import "BSTabBar.h"
@interface BSTabBar()
@property(nonatomic,strong)UIButton* publishButton;
@end
@implementation BSTabBar
-(instancetype)initWithFrame:(CGRect)frame{
 if(self=[super initWithFrame:frame])
 {
     UIButton* publishButton=[UIButton buttonWithType:UIButtonTypeCustom];
     [publishButton setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
     [publishButton setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
     [self addSubview:publishButton];
     _publishButton=publishButton;
 }
    return self;

}
-(void)layoutSubviews{
    [super layoutSubviews];
    self.publishButton.bounds=CGRectMake(0, 0, self.publishButton.currentImage.size.width, self.publishButton.currentImage.size.height);
    self.publishButton.center=CGPointMake(self.frame.size.width*0.5, self.frame.size.height*0.5);
    CGFloat buttonY=0;
    CGFloat buttonW=self.frame.size.width/5;
    CGFloat buttonH=self.frame.size.height;
    NSInteger index=0;
    for (UIView* button in self.subviews) {
        if (![button isKindOfClass:NSClassFromString(@"UITabBarButton")]) continue;
        CGFloat buttonX=buttonW* ((index>1) ? (index+1):index);
        button.frame=CGRectMake(buttonX, buttonY, buttonW, buttonH);
        index++;
    }
}

@end
