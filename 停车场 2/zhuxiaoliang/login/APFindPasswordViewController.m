//
//  APBindingPhoneNoViewController.m
//  APDemo
//
//  Created by 朱小亮 on 2017/1/3.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import "APFindPasswordViewController.h"
#import "UITableView+APCreateCell.h"


@interface APFindPasswordViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation APFindPasswordViewController
@dynamic tableView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView.estimatedRowHeight = 60;
    NSArray *section1 = [NSArray arrayWithObjects:
                         @"APNormolTableViewCell",
                         @"APNormolTableViewCell",
                         @"APNormolTableViewCell",
                         @"APNormolTableViewCell",
                         nil];
    NSArray *section2 = [NSArray arrayWithObjects:
                         @"APAgreeFindPassWordTableViewCell",
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
                                                  placeHolder:@"请重行设置密码"
                                                         text:@""
                                                 btnImageName:@""
                                                     btnTitle:@""],
                          [APNormolCellItem itemWithImageName:@"wx_login"
                                                  placeHolder:@"请输入以确认密码"
                                                         text:@""
                                                 btnImageName:@""
                                                     btnTitle:@""],
                          nil];
}

- (IBAction)findAction:(id)sender {
}

@end
