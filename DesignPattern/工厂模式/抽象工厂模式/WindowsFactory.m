//
//  WindowsFactory.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/11/20.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "WindowsFactory.h"
#import "WindowsInterfaceController.h"
#import "WindowsOperationController.h"

@implementation WindowsFactory

- (OperationController *)getOperation {
    return [WindowsOperationController new];
}

- (InterfaceController *)getUI {
    return [WindowsInterfaceController new];
}

@end
