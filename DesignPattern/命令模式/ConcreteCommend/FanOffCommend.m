//
//  FanOffCommend.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/12/30.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "FanOffCommend.h"
#import "Fan.h"

@interface FanOffCommend ()

@property (nonatomic, strong) Fan *fan;

@end

@implementation FanOffCommend

- (instancetype)initWithFan:(id)fan
{
    if (self = [super init]) {
        self.fan = fan;
    }
    
    return self;
}

- (void)excute {
    [self.fan off];
}

- (void)undo
{
    [self.fan on];
}

@end
