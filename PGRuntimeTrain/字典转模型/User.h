//
//  User.h
//  ZCRuntimeTrain
//
//  Created by 张三弓 on 16/5/8.
//  Copyright © 2016年 张三弓. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cat.h"

@interface User : NSObject

@property(nonatomic,copy)NSString * name;
@property(nonatomic)NSInteger age;
@property(nonatomic)NSInteger userID;

@property(nonatomic,strong)Cat * cat;

@property(nonatomic,strong)NSArray * friends;

@end
