//
//  ShapeFactory.h
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/11/19.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"

typedef enum : NSUInteger {
    ShapeFactoryTypeCircle = 1,
    ShapeFactoryTypeRectangle,
    ShapeFactoryTypeSquare,
} ShapeFactoryType;

NS_ASSUME_NONNULL_BEGIN

@interface ShapeFactory : NSObject

+ (Shape *)getShape:(ShapeFactoryType)type;

@end

NS_ASSUME_NONNULL_END
