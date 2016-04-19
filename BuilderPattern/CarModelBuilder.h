//
//  CarModelBuilder.h
//  BuilderPattern
//
//  Created by tunsuy on 29/3/16.
//  Copyright © 2016年 tunsuy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class CarModel;

@interface CarModelBuilder : NSObject

@property (nonatomic, strong) UIColor *color;
@property (nonatomic) NSInteger price;

- (CarModel *)build;

@end
