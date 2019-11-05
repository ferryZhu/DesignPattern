//
//  HouseBlend.h
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/11/5.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Baverage.h"

NS_ASSUME_NONNULL_BEGIN

///  被装饰者的具体组件 黑咖啡
@interface HouseBlend : NSObject<Baverage>

@end

NS_ASSUME_NONNULL_END
