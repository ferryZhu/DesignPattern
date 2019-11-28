//
//  Macro.h
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/11/27.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#ifndef Macro_h
#define Macro_h

#define SINGLETON_DEF \
+ (instancetype)shareInstance;\
+ (instancetype)alloc __attribute__((unavailable("call sharedInstance instead")));\
+ (instancetype)new __attribute__((unavailable("call sharedInstance instead")));\
- (instancetype)copy __attribute__((unavailable("call sharedInstance instead")));\
- (instancetype)mutableCopy __attribute__((unavailable("call sharedInstance instead")));


#define SINGLETON_IMP \
+ (instancetype)shareInstance{\
static id singleton = nil;\
static dispatch_once_t onceToken;\
dispatch_once(&onceToken, ^{\
singleton = [[super alloc] init];\
});\
return singleton;\
}

#endif /* Macro_h */
