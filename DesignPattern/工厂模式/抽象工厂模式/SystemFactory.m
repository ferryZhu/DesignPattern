//
//  SystemFactory.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/11/20.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "SystemFactory.h"

@implementation SystemFactory

- (OperationController *)getOperation {
    return [OperationController new];
}

- (InterfaceController *)getUI {
    return [InterfaceController new];
}

@end
