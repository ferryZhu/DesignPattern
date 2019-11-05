//
//  Condiment.h
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/11/5.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Baverage.h"

NS_ASSUME_NONNULL_BEGIN

@protocol Condiment <Baverage>

- (instancetype)initWithBaverage:(id<Baverage>)baverage;

@end

NS_ASSUME_NONNULL_END
