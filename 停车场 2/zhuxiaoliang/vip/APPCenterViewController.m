//
//  APPCenterViewController.m
//  APDemo
//
//  Created by 朱小亮 on 2017/1/5.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import "APPCenterViewController.h"


@interface APPCenterViewController ()<UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation APPCenterViewController
@dynamic tableView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.tableView setSeparatorInset:UIEdgeInsetsMake(0, 0, 0, 0)];
    
    self.dataSource = [NSMutableArray arrayWithObjects:
                       [NSArray arrayWithObjects:
                        [APSettingItem settingItemWithLeftImage:@""
                                                      leftTitle:@"会员头像"
                                                 rightImageName:@"wx_login"
                                                     rightTitle:@""
                                                 showAccessView:YES],
                        [APSettingItem settingItemWithLeftImage:@""
                                                      leftTitle:@"会员名"
                                                 rightImageName:@""
                                                     rightTitle:@"Y546456"
                                                 showAccessView:YES],
                        [APSettingItem settingItemWithLeftImage:@""
                                                      leftTitle:@"昵称"
                                                 rightImageName:@""
                                                     rightTitle:@"菲儿"
                                                 showAccessView:YES],
                        [APSettingItem settingItemWithLeftImage:@""
                                                      leftTitle:@"性别"
                                                 rightImageName:@""
                                                     rightTitle:@"女"
                                                 showAccessView:YES],
                        [APSettingItem settingItemWithLeftImage:@""
                                                      leftTitle:@"修改密码"
                                                 rightImageName:@""
                                                     rightTitle:@""
                                                 showAccessView:YES],
                        [APSettingItem settingItemWithLeftImage:@""
                                                      leftTitle:@"更换手机"
                                                 rightImageName:@""
                                                     rightTitle:@"15642545623"
                                                 showAccessView:YES],
                        [APSettingItem settingItemWithLeftImage:@""
                                                      leftTitle:@"我的收获地址"
                                                 rightImageName:@""
                                                     rightTitle:@""
                                                 showAccessView:YES],
                        nil],
                       [NSArray arrayWithObjects:
                        [APSettingItem settingItemWithLeftImage:@""
                                                      leftTitle:@"帮助与反馈"
                                                 rightImageName:@""
                                                     rightTitle:@"3"
                                                 showAccessView:YES],
                        nil],
                       nil];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView createCellFromNibWithIdentifier:@"APSettingNormolTableViewCell"];
    [cell setValue:self.dataSource[indexPath.section][indexPath.row] forKey:@"item"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    APSettingItem *item = self.dataSource[indexPath.section][indexPath.row];
    if ([item.leftTitle isEqualToString:@"我的收获地址"]) {
        [self performSegueWithIdentifier:@"pushToAPManagerAddressViewController" sender:nil];
    }
    
}


@end
