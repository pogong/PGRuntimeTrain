//
//  TransformViewController.m
//  ZCRuntimeTrain
//
//  Created by Shendou on 2017/3/20.
//  Copyright © 2017年 张三弓. All rights reserved.
//

#import "TransformViewController.h"
#import "User.h"
#import "NSObject+createByDic.h"

@interface TransformViewController ()

@end

@implementation TransformViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	self.view.backgroundColor = [UIColor whiteColor];
	
	NSString * path = [[NSBundle mainBundle] pathForResource:@"model" ofType:@"json"];
	NSData * jsonData = [NSData dataWithContentsOfFile:path];
	NSDictionary *json = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:NULL];
	User * zc = [User pg_objectWithDic:json];
	
	NSLog(@"%@",zc.name);
	NSLog(@"%ld",zc.age);
	NSLog(@"%ld",zc.userID);
	NSLog(@"%@",zc.cat);
	NSLog(@"%@",zc.friends);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
