//
//  RemoteControl.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/12/30.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "RemoteControl.h"
#import "NoCommend.h"

@interface RemoteControl()

@property (nonatomic, strong) NSMutableArray *onCommends;

@property (nonatomic, strong) NSMutableArray *offCommends;

@property (nonatomic, strong) id<Commend> undoCommend;

@end

@implementation RemoteControl

- (instancetype)init {
    self = [super init];
    if (self) {
        self.onCommends = [[NSMutableArray alloc] initWithCapacity:5];
        self.offCommends = [[NSMutableArray alloc] initWithCapacity:5];
        
        // 设置初始值
        for (int i = 0; i < 5; i ++) {
            self.onCommends[i] = [[NoCommend alloc] init];
            self.offCommends[i] = [[NoCommend alloc] init];
        }
        self.undoCommend = [[NoCommend alloc] init];
    }
    
    return self;
}

- (void)setCommendWithIndex:(NSInteger)index onCommend:(id<Commend>)onCommend offCommend:(id<Commend>)offCommend {
    self.onCommends[index] = onCommend;
    self.offCommends[index] = offCommend;
}

- (void)onButtonPressed:(NSInteger)index {
    id<Commend> commend = self.onCommends[index];
    [commend excute];
    
    self.undoCommend = commend;
}

- (void)offButtonPressed:(NSInteger)index {
    id<Commend> commend = self.offCommends[index];
    [commend excute];
    
    self.undoCommend = commend;
}

- (void)undo {
    [self.undoCommend undo];
}

@end
