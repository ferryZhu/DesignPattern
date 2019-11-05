//
//  Milk.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/11/5.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "Milk.h"

@implementation Milk

- (instancetype)initWithBaverage:(id<Baverage>)baverage
{
    if (self = [super init]) {
        _baverage = baverage;
    }
    
    return self;
}

- (NSString *)name {
    return [NSString stringWithFormat:@"%@, Milk", [self.baverage name]];
}

- (double)cost {
    return 0.1 + [self.baverage cost];
}

@end
