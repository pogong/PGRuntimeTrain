//
//  UIImage+exchangeAct.m
//  ZCRuntimeTrain
//
//  Created by 张三弓 on 16/5/8.
//  Copyright © 2016年 张三弓. All rights reserved.
//

#import "UIImage+exchangeAct.h"

@implementation UIImage (exchangeAct)

+(void)load{
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		Method one = class_getClassMethod([self class], @selector(imageNamed:));
		Method two = class_getClassMethod([self class], @selector(pg_imageNamed:));
		method_exchangeImplementations(one, two);
	});
}

+(UIImage *)pg_imageNamed:(NSString *)imageName
{
    double version = [[UIDevice currentDevice].systemVersion doubleValue];
    if (version >= 7.0) {
        imageName = [imageName stringByAppendingString:@"_aft7"];
    }
    return [UIImage pg_imageNamed:imageName];
}

@end
