//
//  FanCommend.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/12/19.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "FanOnCommend.h"
#import "Fan.h"

@interface FanOnCommend ()

@property (nonatomic, strong) Fan *fan;

@end

@implementation FanOnCommend

- (instancetype)initWithFan:(id)fan
{
    if (self = [super init]) {
        self.fan = fan;
    }
    
    return self;
}

- (void)excute {
    [self.fan on];
}

- (void)undo
{
    [self.fan off];
}

@end
