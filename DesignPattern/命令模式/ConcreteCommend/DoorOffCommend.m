//
//  DoorOffCommend.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/12/30.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "DoorOffCommend.h"
#import "Door.h"

@interface DoorOffCommend ()

@property (nonatomic, strong) Door *door;

@end

@implementation DoorOffCommend

- (instancetype)initWithDoor:(id)door
{
    if (self = [super init]) {
    
        self.door = door;
    }
    
    return self;
}

- (void)excute {
    [self.door close];
}

- (void)undo
{
    [self.door open];
}

@end
