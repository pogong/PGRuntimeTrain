//
//  CodeModel.m
//  ZCRuntimeTrain
//
//  Created by Shendou on 2017/3/20.
//  Copyright © 2017年 张三弓. All rights reserved.
//

#import "CodeModel.h"
#import "NSObject+quickINandOUT.h"

@implementation CodeModel

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	if (self) {
		[self quickOUTWithCoder:aDecoder];
	}
	return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder
{
	[self quickINWithCoder:aCoder];
}

+(NSArray *)ignorePropertyNameArray
{
	return @[@"gemo"];
}

@end
