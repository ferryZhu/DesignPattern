//
//  JPGImageFactory.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/11/20.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "JPGImageFactory.h"
#import "JPGImageLoader.h"

@implementation JPGImageFactory

- (ImageLoader *)getImageLoader {
    return [JPGImageLoader new];
}

@end
