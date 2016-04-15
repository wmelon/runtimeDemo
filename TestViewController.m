//
//  TestViewController.m
//  runtimeDemo
//
//  Created by 陈仕家 on 16/2/25.
//  Copyright © 2016年 WM. All rights reserved.
//

#import "TestViewController.h"
#import <objc/runtime.h>

@implementation TestViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    [self sayHello:@"hello" sayHi:@"hi"];
}
+ (BOOL)resolveInstanceMethod:(SEL)sel{
    if (sel == @selector(sayHello:sayHi:)){
        class_addMethod([self class], sel, (IMP)say, "v@:@");
    }
    return [super resolveInstanceMethod:sel];
}
void say(id self ,SEL _cmd , NSString * name ,NSString * hi){
    NSLog(@"hello  ==  %@   hi == %@" , name , hi);
}
@end
