//
//  KVOShowViewController.m
//  ZCRuntimeTrain
//
//  Created by Shendou on 2017/3/20.
//  Copyright © 2017年 张三弓. All rights reserved.
//

#import "KVOShowViewController.h"
#import <objc/runtime.h>
#import "People.h"

@interface KVOShowViewController ()
{
	People * _people;
}
@end

@implementation KVOShowViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view.
	
	self.title = @"KVO";
	
	self.view.backgroundColor = [UIColor whiteColor];
	
	_people = [[People alloc]init];
	
	NSLog(@"%@",object_getClass(_people));
	[self logMethods];
	
	[_people addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:nil];
	
	NSLog(@"-----after KVO-----");
	
	NSLog(@"%@",object_getClass(_people));
	[self logMethods];
}

-(void)logMethods{
	unsigned int outCount = 0;
	Method * methodList = class_copyMethodList(object_getClass(_people), &outCount);
	for(int i = 0; i < outCount; i++) {
		NSLog(@"Method-%@",NSStringFromSelector(method_getName(methodList[i])));
	}
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{

}

-(void)dealloc
{
	[_people removeObserver:self forKeyPath:@"name"];
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
