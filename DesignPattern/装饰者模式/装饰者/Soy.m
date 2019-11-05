//
//  Soy.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/11/5.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "Soy.h"

@implementation Soy

- (instancetype)initWithBaverage:(id<Baverage>)baverage
{
    if (self = [super init]) {
        _baverage = baverage;
    }
    
    return self;
}

- (NSString *)name {
    return [NSString stringWithFormat:@"%@, Soy", [self.baverage name]];
}

- (double)cost {
    return 0.50 + [self.baverage cost];
}


@end
