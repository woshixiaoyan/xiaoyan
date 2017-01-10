//
//  APMyBillViewController.m
//  APDemo
//
//  Created by 朱小亮 on 2017/1/7.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import "APMyBillViewController.h"

@interface APMyBillViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation APMyBillViewController
@dynamic tableView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0);
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 8;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView createCellFromNibWithIdentifier:@"APMyBillTableViewCell"];
    return cell;
}

@end
