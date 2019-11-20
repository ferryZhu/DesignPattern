//
//  iOSFactory.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/11/20.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "iOSFactory.h"
#import "iOSInterfaceController.h"
#import "iOSOperationController.h"

@implementation iOSFactory

- (OperationController *)getOperation {
    return [iOSOperationController new];
}

- (InterfaceController *)getUI {
    return [iOSInterfaceController new];
}

@end
