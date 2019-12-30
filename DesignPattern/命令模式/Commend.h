//
//  Commend.h
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/12/19.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Commend <NSObject>

@required

- (void)excute;

- (void)undo;

@end

NS_ASSUME_NONNULL_END
