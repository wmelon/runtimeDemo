//
//  PersonModel.h
//  runtimeDemo
//
//  Created by 陈仕家 on 16/3/1.
//  Copyright © 2016年 WM. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Addr,Hobby;
@interface PersonModel : NSObject

@property (nonatomic, copy) NSString *gender;

@property (nonatomic, assign) NSInteger age;

@property (nonatomic, strong) NSArray<Hobby *> *hobby;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *height;

@property (nonatomic, strong) Addr *addr;

@end
@interface Addr : NSObject

@property (nonatomic, copy) NSString *province;

@property (nonatomic, copy) NSString *city;

@property (nonatomic, copy) NSString *code;

@end

@interface Hobby : NSObject

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *code;

@end

