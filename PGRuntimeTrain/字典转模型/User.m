//
//  User.m
//  ZCRuntimeTrain
//
//  Created by 张三弓 on 16/5/8.
//  Copyright © 2016年 张三弓. All rights reserved.
//

#import "User.h"
#import <objc/runtime.h>

@implementation User

+(NSDictionary *)pg_customKeyDic
{
    return @{@"userID":@"id"};
}

+(NSDictionary *)pg_modelInArray
{
    return @{@"friends":@"Friend"};
}

@end
