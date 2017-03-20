//
//  NSObject+createByDic.h
//  ZCRuntimeTrain
//
//  Created by 张三弓 on 16/5/8.
//  Copyright © 2016年 张三弓. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (createByDic)

+(NSDictionary *)pg_customKeyDic;
+(NSDictionary *)pg_modelInArray;
+(id)pg_objectWithDic:(NSDictionary *)dic;

@end
