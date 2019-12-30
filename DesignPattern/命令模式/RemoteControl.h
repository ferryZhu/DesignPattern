//
//  RemoteControl.h
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/12/30.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Commend.h"

NS_ASSUME_NONNULL_BEGIN

@interface RemoteControl : NSObject

- (void)setCommendWithIndex:(NSInteger)index onCommend:(id<Commend>)onCommend offCommend:(id<Commend>)offCommend;

- (void)onButtonPressed:(NSInteger)index;

- (void)offButtonPressed:(NSInteger)index;

- (void)undo;

@end

NS_ASSUME_NONNULL_END
