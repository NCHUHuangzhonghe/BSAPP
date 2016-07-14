//
//  BSMeViewController.m
//  百思不得其姐
//
//  Created by huangzhonghe on 16/7/14.
//  Copyright © 2016年 huangzhonghe. All rights reserved.
//

#import "BSMeViewController.h"

@interface BSMeViewController ()

@end

@implementation BSMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"我的";
    UIButton *setting=[UIButton buttonWithType:UIButtonTypeCustom];
    [setting addTarget:self action:@selector(settingClick) forControlEvents:UIControlEventTouchUpInside];
    [setting setImage:[UIImage imageNamed:@"mine-setting-icon"] forState:UIControlStateNormal];
    [setting setImage:[UIImage imageNamed:@"mine-setting-icon-click"]forState:UIControlStateHighlighted];
    
    UIButton* nightButton=[UIButton buttonWithType:UIButtonTypeCustom];
    [nightButton addTarget:self action:@selector(nightClick) forControlEvents:UIControlEventTouchUpInside];
    [nightButton setImage:[UIImage imageNamed:@"mine-moon-icon"] forState:UIControlStateNormal];
    [nightButton setImage:[UIImage imageNamed:@"mine-moon-icon-click"] forState:UIControlStateHighlighted];
    nightButton.size=nightButton.currentImage.size;
    setting.size=setting.currentImage.size;
    
    self.navigationItem.rightBarButtonItems=@[[UIBarButtonItem itemWithImage:@"mine-setting-icon" ClickImage:@"mine-setting-icon-click" Target:self Action:@selector(settingClick)],[UIBarButtonItem itemWithImage:@"mine-moon-icon" ClickImage:@"mine-moon-icon-click" Target:self Action:@selector(nightClick)]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)nightClick{}
-(void)settingClick{}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
