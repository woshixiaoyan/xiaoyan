//
//  APVipHomeViewController.m
//  APDemo
//
//  Created by 朱小亮 on 2017/1/4.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import "APVipHomeViewController.h"

@interface APVipHomeViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIView *tableHeardView;

@property (strong,nonatomic)NSMutableArray *buyDataSource;
@property (strong,nonatomic)NSMutableArray *sellDataSource;

@end

@implementation APVipHomeViewController
@dynamic tableView;


- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableHeardView.backgroundColor = [UIColor colorWithHexString:@"fb7358"];
    UIView *maskView = [[UIView alloc] initWithFrame:CGRectMake(0,-1000, self.tableView.frame.size.width, 1000)];
    maskView.backgroundColor = [UIColor colorWithHexString:@"fb7358"];
    [self.tableView addSubview:maskView];

    
    self.dataSource = self.buyDataSource;
}

- (IBAction)segumentChange:(UISegmentedControl *)sender {
    
    switch (sender.selectedSegmentIndex) {
        case 0:
            self.dataSource = self.buyDataSource;
            break;
        case 1:
            self.dataSource = self.sellDataSource;
            break;
            
        default:
            break;
    }
    [self.tableView reloadData];
}


- (NSMutableArray *)buyDataSource{
    if (!_buyDataSource) {
        _buyDataSource = [NSMutableArray arrayWithObjects:
                          [NSArray arrayWithObjects:
                           [APSettingItem settingItemWithLeftImage:@"wx_login"
                                                         leftTitle:@"我的订单"
                                                    rightImageName:@""
                                                        rightTitle:@"3"
                                                    showAccessView:YES],
                           [APSettingItem settingItemWithLeftImage:@"wx_login"
                                                         leftTitle:@"最爱商品"
                                                    rightImageName:@""
                                                        rightTitle:@"3"
                                                    showAccessView:YES],
                           [APSettingItem settingItemWithLeftImage:@"wx_login"
                                                         leftTitle:@"最爱店铺"
                                                    rightImageName:@""
                                                        rightTitle:@"3"
                                                    showAccessView:YES],
                           nil],
                          [NSArray arrayWithObjects:
                           [APSettingItem settingItemWithLeftImage:@"wx_login"
                                                         leftTitle:@"帮助与反馈"
                                                    rightImageName:@""
                                                        rightTitle:@""
                                                    showAccessView:YES],
                           nil],
                          nil];
    }
    return _buyDataSource;
}

- (NSMutableArray *)sellDataSource{
    if (!_sellDataSource) {
        _sellDataSource = [NSMutableArray arrayWithObjects:
                           [NSArray arrayWithObjects:
                            [APSettingItem settingItemWithLeftImage:@"wx_login"
                                                          leftTitle:@"我的货架"
                                                     rightImageName:@""
                                                         rightTitle:@"3"
                                                     showAccessView:YES],
                            [APSettingItem settingItemWithLeftImage:@"wx_login"
                                                          leftTitle:@"交易中"
                                                     rightImageName:@""
                                                         rightTitle:@"3"
                                                     showAccessView:YES],
                            [APSettingItem settingItemWithLeftImage:@"wx_login"
                                                          leftTitle:@"成交记录"
                                                     rightImageName:@""
                                                         rightTitle:@"3"
                                                     showAccessView:YES],
                            [APSettingItem settingItemWithLeftImage:@"wx_login"
                                                          leftTitle:@"发布商品"
                                                     rightImageName:@""
                                                         rightTitle:@""
                                                     showAccessView:YES],
                            [APSettingItem settingItemWithLeftImage:@"wx_login"
                                                          leftTitle:@"设置物流信息"
                                                     rightImageName:@""
                                                         rightTitle:@""
                                                     showAccessView:YES],
                            nil],
                           [NSArray arrayWithObjects:
                            [APSettingItem settingItemWithLeftImage:@"wx_login"
                                                          leftTitle:@"帮助与反馈"
                                                     rightImageName:@""
                                                         rightTitle:@""
                                                     showAccessView:YES],
                            nil],
                           nil];
    }
    return _sellDataSource;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView createCellFromNibWithIdentifier:@"APSettingNormolTableViewCell"];
    [cell setValue:self.dataSource[indexPath.section][indexPath.row] forKey:@"item"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    APSettingItem *item = self.dataSource[indexPath.section][indexPath.row];
    if ([item.leftTitle isEqualToString:@"设置物流信息"]) {
        [self performSegueWithIdentifier:@"pushtowuliuxinxi" sender:nil];
    }
    if ([item.leftTitle isEqualToString:@"我的订单"]) {
        [self performSegueWithIdentifier:@"pushTo我的订单" sender:item];
    }
    
    if ([item.leftTitle isEqualToString:@"交易中"]) {
        [self performSegueWithIdentifier:@"pushTo我的订单" sender:item];
    }
    
    if ([item.leftTitle isEqualToString:@"我的货架"]) {
        [self performSegueWithIdentifier:@"pushTo我的订单" sender:item];
    }
    
    if ([item.leftTitle isEqualToString:@"帮助与反馈"]) {
        [self performSegueWithIdentifier:@"pushTo帮助中心" sender:nil];
    }
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(APSettingItem *)sender{
    if(sender&&[sender isKindOfClass:[APSettingItem class]]){
        [segue.destinationViewController setValue:sender.leftTitle forKey:@"mark"];
    }
}

- (IBAction)backAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)myBillAction:(id)sender {
}


@end
