//
//  ViewController.h
//  runtimeDemo
//
//  Created by 陈仕家 on 16/1/8.
//  Copyright © 2016年 WM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UILabel+Color.h"

@protocol TestDelegate <NSObject>

- (void)test;

@end

@interface ViewController : UIViewController
@property (nonatomic , weak) id<TestDelegate> delegate;
@end

