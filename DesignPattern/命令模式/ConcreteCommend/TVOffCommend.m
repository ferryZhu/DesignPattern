//
//  TVOffCommend.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/12/30.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "TVOffCommend.h"
#import "TV.h"

@interface TVOffCommend ()

@property (nonatomic, strong) TV *tv;

@end

@implementation TVOffCommend

- (instancetype)initWithTV:(id)tv {
    if (self = [super init]) {
        self.tv = tv;
    }
    
    return self;
}

- (void)excute {
    [self.tv close];
}

- (void)undo
{
    [self.tv open];
}

@end
