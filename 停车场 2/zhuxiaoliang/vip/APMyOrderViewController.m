//
//  APMyOrderViewController.m
//  APDemo
//
//  Created by 朱小亮 on 2017/1/6.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import "APMyOrderViewController.h"

@interface APMyOrderViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation APMyOrderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView createCellFromNibWithIdentifier:@"APAddressTableViewCell"];
    return cell;
}




- (void)setUpWhenViewWillAppearForTitle:(NSString *)title forIndex:(NSInteger)index firstTimeAppear:(BOOL)isFirstTime {
    if (isFirstTime) {
        NSLog(@"第%ld个", (long)index);
    }
}

@end
