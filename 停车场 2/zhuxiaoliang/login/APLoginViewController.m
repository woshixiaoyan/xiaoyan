//
//  APLoginViewController.m
//  APDemo
//
//  Created by 朱小亮 on 2017/1/3.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import "APLoginViewController.h"
#import "IndexViewController.h"

@interface APLoginViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation APLoginViewController
@dynamic tableView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableView.estimatedRowHeight = 60;
    NSArray *section0 = [NSArray arrayWithObjects:
                         @"UITableViewCell",
                         nil];
    NSArray *section1 = [NSArray arrayWithObjects:
                         @"APNormolTableViewCell",
                         @"APNormolTableViewCell",
                         nil];
    NSArray *section2 = [NSArray arrayWithObjects:
                         @"APLoginBtnTableViewCell",
                         nil];
    self.cellClasses = [NSArray arrayWithObjects:
//                        section0,
                        section1,
                        section2,
                        nil];
    self.tableView.tableFooterView = [UIView new];
    APLoginAddressItem *item = [APLoginAddressItem new];
    item.name = @"国家/地区";
    item.addressId = @"中国/+86";
    self.section0Datas = [NSArray arrayWithObjects:item, nil];
    
    self.section1Datas = [NSArray arrayWithObjects:
                          [APNormolCellItem itemWithImageName:@"wx_login"
                                                  placeHolder:@"请输入手机号"
                                                         text:@""
                                                 btnImageName:@""
                                                     btnTitle:@""],
                          [APNormolCellItem itemWithImageName:@"wx_login"
                                                  placeHolder:@"密码"
                                                         text:@""
                                                 btnImageName:@"wx_login"
                                                     btnTitle:@""],
                          nil];
    
}

- (IBAction)loginAction:(id)sender {
//    UIViewController *vc = [UIViewController viewControllerWithStoryBoardName:@"vip" vcIdentifier:@"APVipHomeViewController"];
//    [self.navigationController pushViewController:vc animated:YES];
    IndexViewController *index_vc = [[IndexViewController alloc]init];
    [self.navigationController pushViewController:index_vc animated:YES];
}

@end
