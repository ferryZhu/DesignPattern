//
//  AndroidFactory.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/11/20.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "AndroidFactory.h"
#import "AndroidInterfaceController.h"
#import "AndroidOperationController.h"

@implementation AndroidFactory

- (OperationController *)getOperation {
    return [AndroidOperationController new];
}

- (InterfaceController *)getUI {
    return [AndroidInterfaceController new];
}

@end
