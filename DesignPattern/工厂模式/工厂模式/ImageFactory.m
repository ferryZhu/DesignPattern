//
//  ImageFactory.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/11/20.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "ImageFactory.h"

@implementation ImageFactory

- (ImageLoader *)getImageLoader {
    return [ImageLoader new];
}

@end
