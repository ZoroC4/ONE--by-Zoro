//
//  UIView+ZoroExtension.m
//  ONE- by Zoro
//
//  Created by grylls on 15/11/12.
//  Copyright © 2015年 grylls. All rights reserved.
//

#import "UIView+ZoroExtension.h"

@implementation UIView (ZoroExtension)
- (CGFloat)zoro_width
{
    return self.frame.size.width;
}

- (CGFloat)zoro_height

{
    return self.frame.size.height;
}

- (void)setZoro_width:(CGFloat)zoro_width
{
    CGRect frame = self.frame;
    frame.size.width = zoro_width;
    self.frame = frame;
    
}

- (void)setZoro_height:(CGFloat)zoro_height
{
    CGRect frame = self.frame;
    frame.size.height = zoro_height;
    self.frame = frame;
}

- (CGFloat)zoro_x
{
    return self.frame.origin.x;
    
}

-(void)setZoro_x:(CGFloat)zoro_x
{
    CGRect frame = self.frame;
    frame.origin.x =zoro_x;
    self.frame = frame;
}

- (CGFloat)zoro_y
{
    return self.frame.origin.y;
}

- (void)setZoro_y:(CGFloat)zoro_y
{
    CGRect frame = self.frame;
    frame.origin.y = zoro_y;
    self.frame = frame;
}


- (CGFloat)zoro_centerX
{
    return self.center.x;
}

-(void)setZoro_centerX:(CGFloat)zoro_centerX
{
    CGPoint center = self.center;
    center.x = zoro_centerX;
    self.center = center;
}

- (CGFloat)zoro_centerY
{
    return self.center.y;
}

- (void)setZoro_centerY:(CGFloat)zoro_centerY
{
    CGPoint center = self.center;
    center.y = zoro_centerY;
    self.center = center;
    
}

- (CGFloat)zoro_right
{
    ;
    return CGRectGetMaxX(self.frame);
}

- (void)setZoro_right:(CGFloat)zoro_right
{
    self.zoro_right= zoro_right - self.zoro_width;
}
- (CGFloat)zoro_bottom
{
    ;
    return CGRectGetMaxY(self.frame);
}
- (void)setZoro_bottom:(CGFloat)zoro_bottom
{
    self.zoro_bottom= zoro_bottom - self.zoro_height;
}

@end
