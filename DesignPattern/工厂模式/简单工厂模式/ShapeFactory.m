//
//  ShapeFactory.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/11/19.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "ShapeFactory.h"
#import "Circle.h"
#import "Rectangle.h"
#import "Square.h"

@implementation ShapeFactory

+ (Shape *)getShape:(ShapeFactoryType)type {
    if (type == ShapeFactoryTypeCircle) {
        return [[Circle alloc] init];
    } else if (type == ShapeFactoryTypeRectangle) {
        return [[Rectangle alloc] init];
    } else if (type == ShapeFactoryTypeSquare) {
        return [[Square alloc] init];
    }
    
    return [[Shape alloc] init];
}

@end
