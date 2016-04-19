//
//  CarModel.m
//  BuilderPattern
//
//  Created by tunsuy on 29/3/16.
//  Copyright © 2016年 tunsuy. All rights reserved.
//

#import "CarModel.h"
#import "CarModelBuilder.h"

@implementation CarModel

- (instancetype)initWithBuilder:(CarModelBuilder *)builder{
    return [builder build];
}

- (instancetype)initWithBuilderBlock:(builderBlock)builderBlock{
    CarModelBuilder *carModelBuilder = [[CarModelBuilder alloc] init];
    builderBlock(carModelBuilder);
    return [carModelBuilder build];
}

@end
