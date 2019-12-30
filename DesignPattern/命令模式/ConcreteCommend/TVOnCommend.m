//
//  TVCommend.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/12/19.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "TVOnCommend.h"
#import "TV.h"

@interface TVOnCommend ()

@property (nonatomic, strong) TV *tv;

@end

@implementation TVOnCommend

- (instancetype)initWithTV:(id)tv {
    if (self = [super init]) {
        self.tv = tv;
    }
    
    return self;
}

- (void)excute {
    [self.tv open];
}

- (void)undo
{
    [self.tv close];
}

@end
