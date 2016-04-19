//
//  ViewController.m
//  BuilderPattern
//
//  Created by tunsuy on 29/3/16.
//  Copyright © 2016年 tunsuy. All rights reserved.
//

#import "ViewController.h"
#import "CarModel.h"
#import "CarModelBuilder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    第一种：
    CarModelBuilder *builder = [[CarModelBuilder alloc] init];
    builder.color = [UIColor redColor];
    builder.price = 10000;
    CarModel *carModel = [[CarModel alloc] initWithBuilder:builder];
    
//    第二种：
    carModel = [[CarModel alloc] initWithBuilderBlock:^(CarModelBuilder *builder){
        builder.color = [UIColor redColor];
        builder.price = 10000000;
    }];
    
    NSLog(@"carModel.color: %@, carModel.price: %ld", carModel.color, (long)carModel.price);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
