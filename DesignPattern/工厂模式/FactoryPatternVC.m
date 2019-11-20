//
//  FactoryPatternVC.m
//  DesignPattern
//
//  Created by 朱鹏飞 on 2019/11/20.
//  Copyright © 2019 朱鹏飞. All rights reserved.
//

#import "FactoryPatternVC.h"
#import "ShapeFactory.h"
#import "Shape.h"
#import "ImageFactory.h"
#import "PNGImageFactory.h"
#import "GIFImageFactory.h"
#import "JPGImageFactory.h"
#import "ImageLoader.h"
#import "InterfaceController.h"
#import "OperationController.h"
#import "iOSFactory.h"
#import "WindowsFactory.h"
#import "AndroidFactory.h"

@interface FactoryPatternVC ()

@end

@implementation FactoryPatternVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    // 简单工厂模式
    Shape *shape = [ShapeFactory getShape:ShapeFactoryTypeCircle];
//    Shape *shape = [ShapeFactory getShape:ShapeFactoryTypeRectangle];
//    Shape *shape = [ShapeFactory getShape:ShapeFactoryTypeSquare];
    [shape draw];
    
    // 工厂模式
//    ImageFactory *fac = [[PNGImageFactory alloc] init];
//    ImageFactory *fac = [[GIFImageFactory alloc] init];
    ImageFactory *fac = [[JPGImageFactory alloc] init];
    ImageLoader *imageoadler =[fac getImageLoader];
    [imageoadler loadImage];
    
    // 抽象工厂模式
//    SystemFactory *system = [[iOSFactory alloc] init];
//    SystemFactory *system = [[AndroidFactory alloc] init];
    SystemFactory *system = [[WindowsFactory alloc] init];
    InterfaceController *ui = [system getUI];
    OperationController *opera = [system getOperation];
    [opera control];
    [ui display];
    

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
