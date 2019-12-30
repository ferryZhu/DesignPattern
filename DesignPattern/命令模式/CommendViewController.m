//
//  CommendViewController.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/12/19.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "CommendViewController.h"
#import "RemoteControl.h"

#import "Light.h"
#import "LightOnCommend.h"
#import "LightOffCommend.h"

#import "Door.h"
#import "DoorOnCommend.h"
#import "DoorOffCommend.h"

#import "Fan.h"
#import "FanOnCommend.h"
#import "FanOffCommend.h"

#import "Heater.h"
#import "HeaterOnCommend.h"
#import "HeaterOffCommend.h"

#import "TV.h"
#import "TVOnCommend.h"
#import "TVOffCommend.h"

@interface CommendViewController ()

@property (nonatomic, strong) RemoteControl *remoteControl;

@end

@implementation CommendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // 设置命令
    self.remoteControl = [[RemoteControl alloc] init];
    
}

- (IBAction)switchAction:(UISwitch *)sender {
    // 发出命令
    if (sender.on) {
        [self.remoteControl onButtonPressed:sender.tag - 1];
    } else {
        [self.remoteControl offButtonPressed:sender.tag - 1];
    }
}

- (IBAction)buttonAction:(UIButton *)sender {
    
    NSInteger tag = sender.tag - 1;
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"请设置按钮对应电器"
                                                                   message:@""
                                                            preferredStyle:UIAlertControllerStyleActionSheet];

    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel
                                                          handler:^(UIAlertAction * action) {
                                                              //响应事件
                                                              NSLog(@"action = %@", action);
                                                          }];
    UIAlertAction *lightAction = [UIAlertAction actionWithTitle:@"电灯" style:UIAlertActionStyleDefault
                                                         handler:^(UIAlertAction * action) {
        //响应事件
        Light *badroomLight = [[Light alloc] init];
        LightOnCommend *onCommend = [[LightOnCommend alloc] initWithLight:badroomLight];
        LightOffCommend *offCommend = [[LightOffCommend alloc] initWithLight:badroomLight];
        [self.remoteControl setCommendWithIndex:tag onCommend:onCommend offCommend:offCommend];
                                                         }];
    UIAlertAction *tvAction = [UIAlertAction actionWithTitle:@"电视" style:UIAlertActionStyleDefault
                                                         handler:^(UIAlertAction * action) {
                                                             //响应事件
                                                             NSLog(@"action = %@", action);
        TV *tv = [[TV alloc] init];
        TVOnCommend *onCommend = [[TVOnCommend alloc] initWithTV:tv];
        TVOffCommend *offCommend = [[TVOffCommend alloc] initWithTV:tv];
        [self.remoteControl setCommendWithIndex:tag onCommend:onCommend offCommend:offCommend];
                                                         }];
    UIAlertAction *doorAction = [UIAlertAction actionWithTitle:@"电动门" style:UIAlertActionStyleDefault
                                                         handler:^(UIAlertAction * action) {
                                                             //响应事件
                                                             NSLog(@"action = %@", action);
        Door *door = [[Door alloc] init];
        DoorOnCommend *onCommend = [[DoorOnCommend alloc] initWithDoor:door];
        DoorOffCommend *offCommend = [[DoorOffCommend alloc] initWithDoor:door];
        [self.remoteControl setCommendWithIndex:tag onCommend:onCommend offCommend:offCommend];
                                                         }];
    UIAlertAction *fanAction = [UIAlertAction actionWithTitle:@"电风扇" style:UIAlertActionStyleDefault
                                                         handler:^(UIAlertAction * action) {
                                                             //响应事件
                                                             NSLog(@"action = %@", action);
        Fan *fan = [[Fan alloc] init];
        FanOnCommend *onCommend = [[FanOnCommend alloc] initWithFan:fan];
        FanOffCommend *offCommend = [[FanOffCommend alloc] initWithFan:fan];
        [self.remoteControl setCommendWithIndex:tag onCommend:onCommend offCommend:offCommend];
                                                         }];
    UIAlertAction *heaterAction = [UIAlertAction actionWithTitle:@"热水器" style:UIAlertActionStyleDefault
                                                         handler:^(UIAlertAction * action) {
                                                             //响应事件
                                                             NSLog(@"action = %@", action);
        Heater *heater = [[Heater alloc] init];
        HeaterOnCommend *onCommend = [[HeaterOnCommend alloc] initWithHeater:heater];
        HeaterOffCommend *offCommend = [[HeaterOffCommend alloc] initWithHeater:heater];
        [self.remoteControl setCommendWithIndex:tag onCommend:onCommend offCommend:offCommend];
                                                         }];
    [alert addAction:lightAction];
    [alert addAction:tvAction];
    [alert addAction:doorAction];
    [alert addAction:fanAction];
    [alert addAction:heaterAction];
    [alert addAction:cancelAction];
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)undoButtonAction:(id)sender {
    [self.remoteControl undo];
}

@end
