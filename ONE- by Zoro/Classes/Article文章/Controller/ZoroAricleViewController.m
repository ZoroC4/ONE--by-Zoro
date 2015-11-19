//
//  ZoroAricleViewController.m
//  ONE- by Zoro
//
//  Created by grylls on 15/11/12.
//  Copyright © 2015年 grylls. All rights reserved.
//

#import "ZoroAricleViewController.h"

@interface ZoroAricleViewController ()

@end

@implementation ZoroAricleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    //标题
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"navLogo"]];

}

@end
