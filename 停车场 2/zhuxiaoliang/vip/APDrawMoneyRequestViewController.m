//
//  APDrawMoneyRequestViewController.m
//  APDemo
//
//  Created by 朱小亮 on 2017/1/7.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import "APDrawMoneyRequestViewController.h"

@interface APDrawMoneyRequestViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation APDrawMoneyRequestViewController
@dynamic tableView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *identifier = @"";
    switch (indexPath.section) {
        case 0:
            identifier = @"添加银行卡";
            break;
        case 1:
            identifier = @"确定提交";
            break;
            
        default:
            break;
    }
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    return cell;
}


@end
