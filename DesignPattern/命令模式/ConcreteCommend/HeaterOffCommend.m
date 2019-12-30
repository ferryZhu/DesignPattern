//
//  HeaterOffCommend.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/12/30.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "HeaterOffCommend.h"
#import "Heater.h"

@interface HeaterOffCommend()

@property (nonatomic, strong) Heater *heater;

@end

@implementation HeaterOffCommend

- (instancetype)initWithHeater:(id)heater {
    
    if (self = [super init]) {
        self.heater = heater;
    }
    
    return self;
}

- (void)excute {
    [self.heater off];
}

- (void)undo
{
    [self.heater on];
}

@end
