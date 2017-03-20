//
//  ViewController.m
//  ZCRuntimeTrain
//
//  Created by 张三弓 on 16/5/8.
//  Copyright © 2016年 张三弓. All rights reserved.
//

#import "ViewController.h"

#import "MethodExchangeController.h"
#import "CoderViewController.h"
#import "TransformViewController.h"
#import "AssociatedObjectViewController.h"
#import "KVOShowViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
	UITableView * _tableView;
	NSArray * _arr;
}
@end

@implementation ViewController

void (*setter)(id, SEL, BOOL);

- (void)viewDidLoad {
	
    [super viewDidLoad];

	_arr = @[@"方法交换",
			 @"关联属性",
			 @"快速归解档",
			 @"字典转模型",
			 @"KVO"];
	
	CGRect frame = self.view.bounds;
	
	_tableView = [[UITableView alloc]initWithFrame:frame style:UITableViewStyleGrouped];
	_tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
	[self.view addSubview:_tableView];
	_tableView.delegate = self;
	_tableView.dataSource = self;
	
	[_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return _arr.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
	cell.textLabel.text = _arr[indexPath.row];
	return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
	
	switch (indexPath.row) {
		case 0:{
			MethodExchangeController * methodExchange = [[MethodExchangeController alloc]init];
			[self.navigationController pushViewController:methodExchange animated:YES];
		}break;
		case 1:{
			AssociatedObjectViewController * associatedObject = [[AssociatedObjectViewController alloc]init];
			[self.navigationController pushViewController:associatedObject animated:YES];
		}break;
		case 2:{
			CoderViewController * coder = [[CoderViewController alloc]init];
			[self.navigationController pushViewController:coder animated:YES];
		}break;
		case 3:{
			TransformViewController * transform = [[TransformViewController alloc]init];
			[self.navigationController pushViewController:transform animated:YES];
		}break;
		case 4:{
			KVOShowViewController * KVOShow = [[KVOShowViewController alloc]init];
			[self.navigationController pushViewController:KVOShow animated:YES];
		}break;
		default:
			break;
	}
	
}

@end
