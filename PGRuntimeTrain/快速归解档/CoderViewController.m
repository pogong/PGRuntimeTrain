//
//  CoderViewController.m
//  ZCRuntimeTrain
//
//  Created by Shendou on 2017/3/20.
//  Copyright © 2017年 张三弓. All rights reserved.
//

#import "CoderViewController.h"
#import "CodeModel.h"

@interface CoderViewController ()

@end

@implementation CoderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	self.view.backgroundColor = [UIColor whiteColor];
	
	CodeModel * model = [[CodeModel alloc]init];
	model.name = @"leo";
	model.age = 27;
	model.gemo = @"pg";
	
	NSString * doc_path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
	NSString * archive_path = [NSString stringWithFormat:@"%@/archive",doc_path];
	[NSKeyedArchiver archiveRootObject:model toFile:archive_path];
	
	CodeModel * otherModel = [NSKeyedUnarchiver unarchiveObjectWithFile:archive_path];
	
	NSLog(@"otherMoel-name-:%@",otherModel.name);
	NSLog(@"otherMoel-age-:%ld",otherModel.age);
	NSLog(@"otherMoel-gemo-:%@",otherModel.gemo);
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
