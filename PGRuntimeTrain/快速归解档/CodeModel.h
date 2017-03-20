//
//  CodeModel.h
//  ZCRuntimeTrain
//
//  Created by Shendou on 2017/3/20.
//  Copyright © 2017年 张三弓. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CodeModel : NSObject<NSCoding>

@property(nonatomic,copy)NSString * name;
@property(nonatomic)NSInteger age;

@property(nonatomic,copy)NSString * gemo;

@end
