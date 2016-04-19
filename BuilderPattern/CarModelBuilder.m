//
//  CarModelBuilder.m
//  BuilderPattern
//
//  Created by tunsuy on 29/3/16.
//  Copyright © 2016年 tunsuy. All rights reserved.
//

#import "CarModelBuilder.h"
#import "CarModel.h"

@implementation CarModelBuilder

- (CarModel *)build {
    CarModel *carModel = [[CarModel alloc] init];
    carModel.color = _color;
    carModel.price = _price;
    return carModel;
}

@end
