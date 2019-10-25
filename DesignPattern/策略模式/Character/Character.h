//
//  Character.h
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/10/25.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeaponBehavior.h"


NS_ASSUME_NONNULL_BEGIN

@interface Character : NSObject

@property (nonatomic, strong) id<WeaponBehavior> weaPonVegavior;

- (void)fight;

@end

NS_ASSUME_NONNULL_END
