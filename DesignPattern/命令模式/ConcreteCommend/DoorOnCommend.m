//
//  DoorCommend.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/12/19.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "DoorOnCommend.h"
#import "Door.h"

@interface DoorOnCommend ()

@property (nonatomic, strong) Door *door;

@end

@implementation DoorOnCommend

- (instancetype)initWithDoor:(id)door
{
    if (self = [super init]) {
    
        self.door = door;
    }
    
    return self;
}

- (void)excute {
    [self.door open];
}

- (void)undo
{
    [self.door close];
}

@end
