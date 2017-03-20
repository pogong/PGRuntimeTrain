//
//  AssociatedObjectViewController.m
//  ZCRuntimeTrain
//
//  Created by Shendou on 2017/3/20.
//  Copyright © 2017年 张三弓. All rights reserved.
//

#import "AssociatedObjectViewController.h"
#import "UITextField+limitLength.h"
@interface AssociatedObjectViewController ()

@end

@implementation AssociatedObjectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	self.title = @"关联属性";
	
	self.view.backgroundColor = [UIColor whiteColor];
	
	UITextField * tf = [[UITextField alloc]init];
	tf.backgroundColor = [UIColor groupTableViewBackgroundColor];
	tf.frame = CGRectMake(20.0, 64.0+20.0, self.view.frame.size.width - 40.0, 40.0);
	tf.limitLength = 10;
	[self.view addSubview:tf];
	NSLog(@"tf.limitLength-%ld",tf.limitLength);
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
