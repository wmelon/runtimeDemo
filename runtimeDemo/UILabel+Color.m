//
//  UILabel+Color.m
//  runtimeDemo
//
//  Created by 陈仕家 on 16/1/8.
//  Copyright © 2016年 WM. All rights reserved.
//

#import "UILabel+Color.h"
#import <objc/runtime.h>

static const void *colorKey = &colorKey;

@implementation UILabel (Color)
@dynamic FlashColor;

- (UIColor *)FlashColor{
    return objc_getAssociatedObject(self, colorKey);
}
- (void)setFlashColor:(UIColor *)FlashColor{
    objc_setAssociatedObject(self, colorKey, FlashColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
