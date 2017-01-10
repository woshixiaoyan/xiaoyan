//
//  APSettingViewController.m
//  APDemo
//
//  Created by 朱小亮 on 2017/1/6.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import "APSettingViewController.h"

@interface APSettingViewController ()

@end

@implementation APSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.tableView setSeparatorInset:UIEdgeInsetsMake(0, 0, 0, 0)];
    
    self.dataSource = [NSMutableArray arrayWithObjects:
                       
                       [NSArray arrayWithObjects:
                        [APSettingItem settingItemWithLeftImage:@""
                                                      leftTitle:@"所在地区"
                                                 rightImageName:@""
                                                     rightTitle:@"高雄"
                                                 showAccessView:YES],
                        [APSettingItem settingItemWithLeftImage:@""
                                                      leftTitle:@"物流信息"
                                                 rightImageName:@""
                                                     rightTitle:@""
                                                 showAccessView:YES],
                        [APSettingItem settingItemWithLeftImage:@""
                                                      leftTitle:@"关于我"
                                                 rightImageName:@""
                                                     rightTitle:@""
                                                 showAccessView:YES],
                        nil],
                       
                       [NSArray arrayWithObjects:
                        [APSettingItem settingItemWithLeftImage:@""
                                                      leftTitle:@"推送消息设置"
                                                 rightImageName:@""
                                                     rightTitle:@""
                                                 showAccessView:YES],
                        [APSettingItem settingItemWithLeftImage:@""
                                                      leftTitle:@"非wifi坏境下手动下载图片"
                                                 rightImageName:@""
                                                     rightTitle:@""
                                                 showAccessView:YES],
                        [APSettingItem settingItemWithLeftImage:@""
                                                      leftTitle:@"清除本地缓存"
                                                 rightImageName:@""
                                                     rightTitle:@"17.3M"
                                                 showAccessView:YES],
                        nil],
                       
                       [NSArray arrayWithObjects:
                        [APSettingItem settingItemWithLeftImage:@""
                                                      leftTitle:@"版本信息"
                                                 rightImageName:@""
                                                     rightTitle:@"V1.0.0"
                                                 showAccessView:YES],
                        nil],
                       nil];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView createCellFromNibWithIdentifier:@"APSettingNormolTableViewCell"];
    [cell setValue:self.dataSource[indexPath.section][indexPath.row] forKey:@"item"];
    return cell;
}

@end
