//
//  BSTabBarController.m
//  百思不得其姐
//
//  Created by huangzhonghe on 16/7/14.
//  Copyright © 2016年 huangzhonghe. All rights reserved.
//

#import "BSTabBarController.h"
#import "BSEssentialViewController.h"
#import "BSNewViewController.h"
#import "BSFriendViewController.h"
#import "BSMeViewController.h"
#import "BSTabBar.h"
@interface BSTabBarController ()


@end

@implementation BSTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setValue:[[BSTabBar alloc] init] forKey:@"tabBar"];
    NSMutableDictionary* attrs=[[NSMutableDictionary alloc] init];
    attrs[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName]=[UIColor lightGrayColor];
    NSMutableDictionary* selectedattrs=[[NSMutableDictionary alloc] init];
    attrs[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName]=[UIColor darkGrayColor];
    UITabBarItem* item=[UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedattrs forState:UIControlStateSelected];
    [self setUpchildVC:[[BSEssentialViewController alloc] init] title:@"精华" iamge:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
    [self setUpchildVC:[[BSNewViewController alloc] init]  title:@"最新" iamge:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
    [self setUpchildVC:[[BSFriendViewController alloc] init]  title:@"关注" iamge:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];
     [self setUpchildVC:[[BSMeViewController alloc] init]  title:@"我" iamge:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];
   
}
-(void)setUpchildVC:(UIViewController*)vc title: (NSString*)title iamge:(NSString*)image selectedImage:(NSString*)selectedImage
{
    UINavigationController* nav=[[UINavigationController alloc] initWithRootViewController:vc];
    vc.navigationItem.title=title;
    vc.view.backgroundColor=[UIColor colorWithRed:arc4random_uniform(100)/100.0 green:arc4random_uniform(100)/100.0 blue:arc4random_uniform(100)/100.0 alpha:1.0];
    vc.tabBarItem.title=title;
    vc.tabBarItem.image=[UIImage imageNamed:image];
    vc.tabBarItem.selectedImage=[UIImage imageNamed:selectedImage];
    [self addChildViewController:nav];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
