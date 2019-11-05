//
//  Moca.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/11/5.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "Moca.h"

@implementation Moca

- (instancetype)initWithBaverage:(id<Baverage>)baverage
{
    if (self = [super init]) {
        _baverage = baverage;
    }
    
    return self;
}

- (NSString *)name {
    return [NSString stringWithFormat:@"%@, Moca", [self.baverage name]];
}

- (double)cost {
    return 0.3 + [self.baverage cost];
}

@end
