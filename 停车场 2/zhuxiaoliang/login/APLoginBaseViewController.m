//
//  APLoginBaseViewController.m
//  APDemo
//
//  Created by 朱小亮 on 2017/1/3.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import "APLoginBaseViewController.h"

@interface APLoginBaseViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation APLoginBaseViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, -20, self.view.frame.size.width, 64)];
    view.backgroundColor = [UIColor redColor];
    [self.navigationController.navigationBar setValue:view forKey:@"backgroundView"];
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    self.tableView.backgroundColor = [UIColor colorWithHexString:@"F3F3F3"];
    [self.tableView setSeparatorInset:UIEdgeInsetsMake(0, 50, 0, 0)];
    [self.tableView setSeparatorColor:[[UIColor colorWithHexString:@"848484"] colorWithAlphaComponent:0.2]];

}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section == 0 ) {
        return 10;
    }
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return CGFLOAT_MIN;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.cellClasses.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewAutomaticDimension;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSArray *classes = self.cellClasses[section];
    return classes.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSArray *classes = self.cellClasses[indexPath.section];
    
    if([classes[indexPath.row] isEqualToString:@"UITableViewCell"]){
        UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:@"AddressCell"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        APLoginAddressItem *item = self.section0Datas[indexPath.row];
        cell.textLabel.text = item.name;
        cell.textLabel.textAlignment = NSTextAlignmentLeft;
        cell.detailTextLabel.text = item.addressId;
        return cell;
    }
    
    UITableViewCell *cell = [tableView createCellFromNibWithIdentifier:classes[indexPath.row]];
    if ([cell isKindOfClass:[APNormolTableViewCell class]]) {
        APNormolTableViewCell *tempCell = (APNormolTableViewCell *)cell;
        APNormolCellItem *item = self.section1Datas[indexPath.row];
        tempCell.item = item;
    }
    
    return cell;
}

@end


