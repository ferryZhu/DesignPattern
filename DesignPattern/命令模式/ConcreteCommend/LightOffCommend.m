//
//  LightOffCommend.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/12/30.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "LightOffCommend.h"
#import "Light.h"

@interface LightOffCommend ()

@property (nonatomic, strong) Light *light;

@end

@implementation LightOffCommend

- (instancetype)initWithLight:(id)light
{
    if (self = [super init]) {
    
        self.light = light;
    }
    
    return self;
}

- (void)excute {
    [self.light off];
}

- (void)undo
{
    [self.light on];
}

@end
