//
//  HeaterCommend.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/12/19.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "HeaterOnCommend.h"
#import "Heater.h"

@interface HeaterOnCommend()

@property (nonatomic, strong) Heater *heater;

@end

@implementation HeaterOnCommend

- (instancetype)initWithHeater:(id)heater {
    
    if (self = [super init]) {
        self.heater = heater;
    }
    
    return self;
}

- (void)excute {
    [self.heater on];
}

- (void)undo
{
    [self.heater off];
}

@end
