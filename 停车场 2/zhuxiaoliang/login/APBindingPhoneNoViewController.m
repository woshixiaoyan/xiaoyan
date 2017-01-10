//
//  APBindingPhoneNoViewController.m
//  APDemo
//
//  Created by 朱小亮 on 2017/1/3.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import "APBindingPhoneNoViewController.h"


@interface APBindingPhoneNoViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation APBindingPhoneNoViewController
@dynamic tableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView.estimatedRowHeight = 60;
    NSArray *section1 = [NSArray arrayWithObjects:
                         @"APNormolTableViewCell",
                         @"APNormolTableViewCell",
                         nil];
    NSArray *section2 = [NSArray arrayWithObjects:
                         @"APAgreeBindingTableViewCell",
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
                                                 btnImageName:@"wx_login"
                                                     btnTitle:@""],
                          [APNormolCellItem itemWithImageName:@"wx_login"
                                                  placeHolder:@"验证码"
                                                         text:@""
                                                 btnImageName:@""
                                                     btnTitle:@"获取验证码"],
                          nil];
}

- (IBAction)bindingAction:(id)sender {
}

@end
