//
//  CarModel.h
//  BuilderPattern
//
//  Created by tunsuy on 29/3/16.
//  Copyright © 2016年 tunsuy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class CarModelBuilder;

typedef void (^builderBlock)(CarModelBuilder *);

@interface CarModel : NSObject

@property (nonatomic, strong) UIColor *color;
@property (nonatomic) NSInteger price;

//第一种：
- (instancetype)initWithBuilder:(CarModelBuilder *)builder;
//第二种：
- (instancetype)initWithBuilderBlock:(builderBlock)builderBlock;

@end
