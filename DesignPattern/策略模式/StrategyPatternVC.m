//
//  StrategyPatternVC.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/11/5.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "StrategyPatternVC.h"
#import "King.h"
#import "SwordBehavior.h"
#import "KnifeBehavior.h"
#import "AxeBehavior.h"

@interface StrategyPatternVC ()

@property (nonatomic, strong) Character *king;

@end

@implementation StrategyPatternVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"策略模式";
    
    UIButton *button_1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button_1.frame = CGRectMake(100, 100, 100, 100);
    [button_1 setTitle:@"更换武器1" forState:UIControlStateNormal];
    [button_1 addTarget:self action:@selector(changeWean_1) forControlEvents:UIControlEventTouchUpInside];
    button_1.backgroundColor = [UIColor redColor];
    [self.view addSubview:button_1];

    UIButton *button_2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button_2.frame = CGRectMake(100, 250, 100, 100);
    [button_2 setTitle:@"更换武器2" forState:UIControlStateNormal];
    [button_2 addTarget:self action:@selector(changeWean_2) forControlEvents:UIControlEventTouchUpInside];
    button_2.backgroundColor = [UIColor redColor];
    [self.view addSubview:button_2];


    self.king = [[King alloc] init];
    [self.king setWeaPonVegavior:[SwordBehavior new]];
    [self.king fight];
}

- (void)changeWean_1 {
    [self.king setWeaPonVegavior:[KnifeBehavior new]];
    [self.king fight];
}

- (void)changeWean_2 {
    [self.king setWeaPonVegavior:[AxeBehavior new]];
    [self.king fight];
}

@end
