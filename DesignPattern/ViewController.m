//
//  ViewController.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/10/25.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "ViewController.h"
#import "StrategyPatternVC.h"
#import "DecoratorPatternVC.h"
#import "FactoryPatternVC.h"
#import "Singleton.h"
#import "Singleton_Macro.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSArray *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.dataSource = [NSArray arrayWithObjects:@"策略模式", @"装饰者模式", @"工厂模式",nil];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];

    cell.textLabel.text = [NSString stringWithFormat:@"%ld.%@", indexPath.row + 1, self.dataSource[indexPath.row]];
    
    return  cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        [self.navigationController pushViewController:[StrategyPatternVC new] animated:YES];
    } else if (indexPath.row == 1) {
        [self.navigationController pushViewController:[DecoratorPatternVC new] animated:YES];
    } else if (indexPath.row == 2) {
        [self.navigationController pushViewController:[FactoryPatternVC new] animated:YES];
    }
}


@end
