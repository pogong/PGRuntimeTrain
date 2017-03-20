//
//  MethodExchangeController.m
//  ZCRuntimeTrain
//
//  Created by Shendou on 2017/3/20.
//  Copyright © 2017年 张三弓. All rights reserved.
//

#import "MethodExchangeController.h"

@interface MethodExchangeController ()

@end

@implementation MethodExchangeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
	
	self.title = @"方法交换";
	
	_imageView.image = [UIImage imageNamed:@"on_show"];
	
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
