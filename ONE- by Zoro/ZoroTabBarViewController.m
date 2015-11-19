//
//  ZoroTabBarViewController.m
//  ONE- by Zoro
//
//  Created by grylls on 15/11/12.
//  Copyright © 2015年 grylls. All rights reserved.
//

#import "ZoroTabBarViewController.h"
#import "ZoroTabBar.h"

#import "ZoroAricleViewController.h"
#import "ZoroHomeViewController.h"
#import "ZoroQuestionViewController.h"
#import "ZoroThingViewController.h"
#import "ZoroMyOneViewController.h"

#import "ZoroNavigationController.h"


@interface ZoroTabBarViewController ()

@end

@implementation ZoroTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setUpChildViewControllers];
    [self setupItemTitleTextAttribute];
    [self setUpTabBar];

 
}


//设置文字属性
- (void)setupItemTitleTextAttribute
{
    //设置所有文字属性
    
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    
    /**** 文字属性 ****/
    // 普通状态下的文字属性
    NSMutableDictionary *normalAttrs = [NSMutableDictionary dictionary];
    normalAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    normalAttrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    [item setTitleTextAttributes:normalAttrs forState:UIControlStateNormal];
    // 选中状态下的文字属性
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    [item setTitleTextAttributes:normalAttrs forState:UIControlStateNormal];
}


//添加子控制器

- (void)setUpChildViewControllers
{
    [self setUpOneChildViewController:[[ZoroNavigationController alloc] initWithRootViewController:[[ZoroHomeViewController alloc] init]] title:@"首页" image:@"home" selectedImage:@"homeSelected"];

    [self setUpOneChildViewController:[[ZoroNavigationController alloc] initWithRootViewController:[[ZoroAricleViewController alloc] init]] title:@"文章" image:@"reading" selectedImage:@"readingSelected"];
    
    [self setUpOneChildViewController:[[ZoroNavigationController alloc] initWithRootViewController:[[ZoroQuestionViewController alloc] init]] title:@"问题" image:@"question" selectedImage:@"questionSelected"];
    
    [self setUpOneChildViewController:[[ZoroNavigationController alloc] initWithRootViewController:[[ZoroThingViewController alloc] init]] title:@"东西" image:@"thing" selectedImage:@"thingSelected"];
    
    [self setUpOneChildViewController:[[ZoroNavigationController alloc] initWithRootViewController:[[ZoroMyOneViewController alloc] init]] title:@"个人" image:@"person" selectedImage:@"personSelected"];
    
    
}


//初始化一个子控制器
- (void) setUpOneChildViewController:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    vc.view.backgroundColor = ZoroRandomColor;
    vc.tabBarItem.title = title;
    if (image.length) {
        vc.tabBarItem.image = [UIImage imageNamed:image];
        vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
        
    }
    
    [self addChildViewController:vc];
    
}


 //更换tabbar
-(void)setUpTabBar
{
    [self setValue:[[ZoroTabBar alloc] init] forKey:@"tabBar"];
}



@end
