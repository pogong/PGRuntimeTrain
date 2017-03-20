//
//  NSObject+quickINandOUT.h
//  ZCRuntimeTrain
//
//  Created by 张三弓 on 16/5/8.
//  Copyright © 2016年 张三弓. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (quickINandOUT)

+(NSArray *)ignorePropertyNameArray;

-(void)quickINWithCoder:(NSCoder *)coder;
-(void)quickOUTWithCoder:(NSCoder *)coder;

@end
