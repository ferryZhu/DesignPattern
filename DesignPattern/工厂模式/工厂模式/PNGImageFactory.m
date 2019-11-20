//
//  PNGImageFactory.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/11/20.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "PNGImageFactory.h"
#import "PNGImageLoader.h"

@implementation PNGImageFactory

- (ImageLoader *)getImageLoader {
    return [PNGImageLoader new];
}

@end
