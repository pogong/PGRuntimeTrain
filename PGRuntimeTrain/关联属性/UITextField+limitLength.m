//
//  UITextField+limitLength.m
//  ZCRuntimeTrain
//
//  Created by 张三弓 on 16/5/8.
//  Copyright © 2016年 张三弓. All rights reserved.
//

#import "UITextField+limitLength.h"
#import <objc/runtime.h>

@implementation UITextField (limitLength)

static const void * PGLimitLengthKey = @"PGLimitLengthKey";

-(void)setLimitLength:(NSInteger)limitLength
{
    objc_setAssociatedObject(self, &PGLimitLengthKey, @(limitLength), OBJC_ASSOCIATION_ASSIGN);
}

-(NSInteger)limitLength
{
    return [objc_getAssociatedObject(self, &PGLimitLengthKey) integerValue];
}

@end
