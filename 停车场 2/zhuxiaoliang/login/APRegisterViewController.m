//
//  APLoginViewController.m
//  APDemo
//
//  Created by 朱小亮 on 2017/1/3.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import "APRegisterViewController.h"
#import "UITableView+APCreateCell.h"

@interface APRegisterViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation APRegisterViewController
@dynamic tableView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView.estimatedRowHeight = 60;
    NSArray *section1 = [NSArray arrayWithObjects:
                         @"APNormolTableViewCell",
                         @"APNormolTableViewCell",
                         @"APNormolTableViewCell",
                         nil];
    NSArray *section2 = [NSArray arrayWithObjects:
                         @"APAgreeProtocoalTableViewCell",
                         nil];
    self.cellClasses = [NSArray arrayWithObjects:
                        section1,
                        section2,
                        nil];
    self.tableView.tableFooterView = [UIView new];
    
    self.section1Datas = [NSArray arrayWithObjects:
                          [APNormolCellItem itemWithImageName:@"wx_login"
                                                  placeHolder:@"请输入手机号"
                                                         text:@""
                                                 btnImageName:@""
                                                     btnTitle:@""],
                          [APNormolCellItem itemWithImageName:@"wx_login"
                                                  placeHolder:@"请输入验证码"
                                                         text:@""
                                                 btnImageName:@""
                                                     btnTitle:@"获取验证码"],
                          [APNormolCellItem itemWithImageName:@"wx_login"
                                                  placeHolder:@"设置密码"
                                                         text:@""
                                                 btnImageName:@"wx_login"
                                                     btnTitle:@""],
                          nil];
}

- (IBAction)registerAction:(id)sender {
}

@end
