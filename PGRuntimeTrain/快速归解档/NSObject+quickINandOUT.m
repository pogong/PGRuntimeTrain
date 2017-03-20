//
//  NSObject+quickINandOUT.m
//  ZCRuntimeTrain
//
//  Created by 张三弓 on 16/5/8.
//  Copyright © 2016年 张三弓. All rights reserved.
//

#import "NSObject+quickINandOUT.h"
#import <objc/runtime.h>

@implementation NSObject (quickINandOUT)

static NSSet * _foundationClasses;

+ (void)load
{
    _foundationClasses = [NSSet setWithObjects:
                          [NSObject class],
                          [NSURL class],
                          [NSDate class],
                          [NSNumber class],
                          [NSDecimalNumber class],
                          [NSData class],
                          [NSMutableData class],
                          [NSArray class],
                          [NSMutableArray class],
                          [NSDictionary class],
                          [NSMutableDictionary class],
                          [NSString class],
                          [NSMutableString class], nil];
}

+ (BOOL)isClassFromFoundation:(Class)c
{
    return [_foundationClasses containsObject:c];
}

-(void)quickINWithCoder:(NSCoder *)coder
{
    Class class = [self class];
    while (class && [NSObject isClassFromFoundation:class] == NO) {
        unsigned int outCount = 0;
        Ivar * ivars = class_copyIvarList(class, &outCount);
        for (int i = 0; i < outCount; i++) {
            Ivar ivar = ivars[i];
            NSString * key = [[NSString stringWithUTF8String:ivar_getName(ivar)] substringFromIndex:1];
            NSArray * ignorePropertyNameArray = [class ignorePropertyNameArray];
            if ([ignorePropertyNameArray containsObject:key]) continue;
            id value = [self valueForKeyPath:key];
            [coder encodeObject:value forKey:key];
        }
        free(ivars);
        class = [class superclass];
    }
}

-(void)quickOUTWithCoder:(NSCoder *)coder
{
    Class class = [self class];
    while (class && [NSObject isClassFromFoundation:class] == NO) {
        unsigned int outCount = 0;
        Ivar * ivars = class_copyIvarList(class, &outCount);
        for (int i = 0; i < outCount; i++) {
            Ivar ivar = ivars[i];
            NSString * key = [[NSString stringWithUTF8String:ivar_getName(ivar)] substringFromIndex:1];
            NSArray * ignorePropertyNameArray = [class ignorePropertyNameArray];
            if ([ignorePropertyNameArray containsObject:key]) continue;
            id value = [coder decodeObjectForKey:key];
            [self setValue:value forKey:key];
        }
        free(ivars);
        class = [class superclass];
    }
}

@end
