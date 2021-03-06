//
//  ImageFactory.h
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/11/20.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ImageLoader.h"

NS_ASSUME_NONNULL_BEGIN

@interface ImageFactory : NSObject

- (ImageLoader *)getImageLoader;

@end

NS_ASSUME_NONNULL_END
