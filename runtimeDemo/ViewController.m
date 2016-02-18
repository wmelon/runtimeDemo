//
//  ViewController.m
//  runtimeDemo
//
//  Created by 陈仕家 on 16/1/8.
//  Copyright © 2016年 WM. All rights reserved.
//

#import "ViewController.h"
#import <Crashlytics/Crashlytics.h>


@interface ViewController ()<TestDelegate>

@end

@implementation ViewController

- (void)test{
    NSLog(@"test");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    int i = 10;
//    NSAssert(i == 0 , NSStringFromSelector(_cmd));
//    NSLog(@"%@" , _cmd);
//    NSLog(@"Current method: %@ %@",[self class],NSStringFromSelector(_cmd));
    
    
    
    
//    NSArray * array = @[@"1"];
//    NSLog(@"%@" , array[2]);
    
    self.delegate = self;
    [self.delegate test];
    
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    [label setFlashColor:[UIColor redColor]];
    label.backgroundColor = label.FlashColor;
    [self.view addSubview:label];
    
    
    UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(20, 50, 100, 30);
    [button setTitle:@"Crash" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(crashButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (IBAction)crashButtonTapped:(id)sender {
    [[Crashlytics sharedInstance] crash];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
