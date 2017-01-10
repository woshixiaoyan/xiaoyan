//
//  APDrawMoneyViewController.m
//  APDemo
//
//  Created by 朱小亮 on 2017/1/7.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import "APDrawMoneyViewController.h"

@interface APDrawMoneyViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation APDrawMoneyViewController
@dynamic tableView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"APDrawMoneyViewCell"];
    cell.imageView.image = [UIImage imageNamed:@"QQ"];
    cell.textLabel.text = @"提款申请";
    return cell;
}

@end
