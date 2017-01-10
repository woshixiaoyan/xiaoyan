//
//  APVipBaseViewController.m
//  APDemo
//
//  Created by 朱小亮 on 2017/1/4.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import "APVipBaseViewController.h"

@interface APVipBaseViewController ()

@end

@implementation APVipBaseViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, -20, self.view.frame.size.width, 64)];
    view.backgroundColor = [UIColor redColor];
    [self.navigationController.navigationBar setValue:view forKey:@"backgroundView"];
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    self.tableView.backgroundColor = [UIColor colorWithHexString:@"F3F3F3"];
    [self.tableView setSeparatorInset:UIEdgeInsetsMake(0, 50, 0, 0)];
    [self.tableView setSeparatorColor:[[UIColor colorWithHexString:@"848484"] colorWithAlphaComponent:0.2]];
    
    self.tableView.sectionHeaderHeight = 0;
    self.tableView.sectionFooterHeight = 8;
    
    self.tableView.tableFooterView = [UIView new];
    self.tableView.estimatedRowHeight = 44;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return CGFLOAT_MIN;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.dataSource.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.dataSource[section] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"cell"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


@end
