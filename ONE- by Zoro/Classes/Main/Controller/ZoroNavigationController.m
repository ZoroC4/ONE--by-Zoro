//
//  ZoroNavigationController.m
//  ONE- by Zoro
//
//  Created by grylls on 15/11/12.
//  Copyright © 2015年 grylls. All rights reserved.
//

#import "ZoroNavigationController.h"

@interface ZoroNavigationController () <UIGestureRecognizerDelegate>

@end

@implementation ZoroNavigationController

- (void)viewDidLoad
{
    self.interactivePopGestureRecognizer.delegate =self;
    
    self.view.backgroundColor = [UIColor blackColor];

}

//- (void)_setNavBar {
//    UIImage *image = [UIImage imageNamed:@"navLogo"];
//    UIImageView *imgView = [[UIImageView alloc] initWithImage:image];
//    
////    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width-185)/2.0, 12, 185, 20)];
////    imgView.contentMode= UIViewContentModeScaleAspectFit;
////    imgView.image = image;
//    self.navigationItem.titleView = imgView;
//    NSLog(@"%@", self.navigationItem);
//    NSLog(@"%s",__func__);
//}


@end
