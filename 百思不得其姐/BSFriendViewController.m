//
//  BSFriendViewController.m
//  百思不得其姐
//
//  Created by huangzhonghe on 16/7/14.
//  Copyright © 2016年 huangzhonghe. All rights reserved.
//

#import "BSFriendViewController.h"

@interface BSFriendViewController ()

@end

@implementation BSFriendViewController

- (void)viewDidLoad {
    self.navigationItem.title=@"我的关注";
    self.navigationItem.leftBarButtonItem=[UIBarButtonItem itemWithImage:@"friendsRecommentIcon" ClickImage:@"friendsRecommentIcon-click" Target:self Action:@selector(leftbtnClick)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)leftbtnClick{
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
