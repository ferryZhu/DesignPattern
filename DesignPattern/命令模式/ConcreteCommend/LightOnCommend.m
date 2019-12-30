//
//  LightCommend.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/12/19.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "LightOnCommend.h"
#import "Light.h"

@interface LightOnCommend ()

@property (nonatomic, strong) Light *light;

@end

@implementation LightOnCommend

- (instancetype)initWithLight:(id)light
{
    if (self = [super init]) {
    
        self.light = light;
    }
    
    return self;
}

- (void)excute {
    [self.light on];
}

- (void)undo
{
    [self.light off];
}

@end
