//
//  Singleton.h
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/11/27.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Singleton : NSObject

+ (instancetype)alloc __attribute__((unavailable("call sharedInstance instead")));
+ (instancetype)new __attribute__((unavailable("call sharedInstance instead")));
- (instancetype)copy __attribute__((unavailable("call sharedInstance instead")));
- (instancetype)mutableCopy __attribute__((unavailable("call sharedInstance instead")));


+ (instancetype)shareInstance;

@end

NS_ASSUME_NONNULL_END
