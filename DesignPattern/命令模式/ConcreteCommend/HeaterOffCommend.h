//
//  HeaterOffCommend.h
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/12/30.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Commend.h"

NS_ASSUME_NONNULL_BEGIN

@interface HeaterOffCommend : NSObject<Commend>

- (instancetype)initWithHeater:(id)heater;

@end

NS_ASSUME_NONNULL_END
