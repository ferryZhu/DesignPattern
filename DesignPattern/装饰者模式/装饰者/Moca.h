//
//  Moca.h
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/11/5.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Condiment.h"

NS_ASSUME_NONNULL_BEGIN

@interface Moca : NSObject<Condiment>

@property (strong, nonatomic) id<Baverage> baverage;

@end

NS_ASSUME_NONNULL_END
