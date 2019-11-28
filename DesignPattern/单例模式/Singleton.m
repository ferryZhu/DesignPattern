//
//  Singleton.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/11/27.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    static Singleton * singleton = nil;
    dispatch_once(&onceToken, ^{
        singleton = [[Singleton alloc] init];
    });
    
    return singleton;
}

@end
