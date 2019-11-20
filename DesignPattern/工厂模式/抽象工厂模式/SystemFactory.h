//
//  SystemFactory.h
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/11/20.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OperationController.h"
#import "InterfaceController.h"

NS_ASSUME_NONNULL_BEGIN

@interface SystemFactory : NSObject

- (OperationController *)getOperation;

- (InterfaceController *)getUI;

@end

NS_ASSUME_NONNULL_END
