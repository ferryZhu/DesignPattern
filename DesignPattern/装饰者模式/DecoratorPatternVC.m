//
//  DecoratorPatternVC.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/11/5.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "DecoratorPatternVC.h"
#import "Espresso.h"
#import "HouseBlend.h"
#import "Moca.h"
#import "Milk.h"
#import "Soy.h"

@interface DecoratorPatternVC ()

@end

@implementation DecoratorPatternVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"装饰者模式";
    
    // 一杯添加摩卡、牛奶、豆浆的浓缩咖啡
    id<Baverage> baverage = [[Espresso alloc] init];
    baverage = [[Moca alloc] initWithBaverage:baverage];
    baverage = [[Milk alloc] initWithBaverage:baverage];
    baverage = [[Soy alloc] initWithBaverage:baverage];
    NSLog(@"%@ --- %lf",[baverage name], [baverage cost]);
    
    // 一杯加双倍摩卡的黑咖啡
    id<Baverage> houseBlend = [[HouseBlend alloc] init];
    houseBlend = [[Moca alloc] initWithBaverage:houseBlend];
    houseBlend = [[Moca alloc] initWithBaverage:houseBlend];
    NSLog(@"%@ --- %lf",[houseBlend name], [houseBlend cost]);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
