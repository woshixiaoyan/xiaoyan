//
//  ShopDetailViewController.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/6.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "ShopDetailViewController.h"
#import "DetailTopTableViewCell.h"
#import "DetailImageTableViewCell.h"
#import "DetailListTableViewCell.h"
#import "DetailNewsTableViewCell.h"
#import "DetailBottomView.h"
#import "ShopCarViewController.h"
@interface ShopDetailViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(strong,nonatomic)UITableView *table;
@end

@implementation ShopDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initTableView];
    [self initbottomview];
}

-(void)shopCarClick{
    ShopCarViewController *car_vc = [[ShopCarViewController alloc] init];
    [self.navigationController pushViewController:car_vc animated:YES];
}


-(void)initbottomview{
    DetailBottomView *bottom_view = [[DetailBottomView alloc] init];
    [bottom_view.btn_car addTarget:self action:@selector(shopCarClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bottom_view];
    bottom_view.sd_layout
    .leftSpaceToView(self.view,0)
    .rightSpaceToView(self.view,0)
    .bottomSpaceToView(self.view,0)
    .heightIs(46);
}

-(void)initTableView{
    self.table = [[UITableView alloc]initWithFrame:CGRectMake(self.view.frame.origin.x, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    _table.separatorStyle = UITableViewCellSeparatorStyleNone;
    _table.showsHorizontalScrollIndicator = NO;
    _table.delegate = self;
    _table.dataSource = self;
    _table.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:_table];
    [_table reloadData];
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 1;
    }
    if (section == 1) {
        return 1;
    }
    if (section == 2) {
        return 4;
    }
    if (section == 3) {
        return 1;
    }
    if (section == 4) {
        return 3;
    }
    return 0;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 1) {
        return 314/2;
    }
    if (indexPath.section == 0) {
        return 620/2;
    }
    if (indexPath.section == 2) {
        return 55;
    }
    if (indexPath.section == 3) {
        return 330/2;
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        static NSString *cellid = @"cellltopimage";
        DetailImageTableViewCell *cell = (DetailImageTableViewCell*)[tableView dequeueReusableCellWithIdentifier:cellid];
        if (cell == nil)
        {
            cell=[[DetailImageTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        }
        return cell;
    }
    if (indexPath.section == 1) {
        static NSString *cellid = @"cellltop";
        DetailTopTableViewCell *cell = (DetailTopTableViewCell*)[tableView dequeueReusableCellWithIdentifier:cellid];
        if (cell == nil)
        {
            cell=[[DetailTopTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        }
        return cell;
    }
    if (indexPath.section == 2) {
        static NSString *cellid = @"celllist";
        DetailListTableViewCell *cell = (DetailListTableViewCell*)[tableView dequeueReusableCellWithIdentifier:cellid];
        if (cell == nil)
        {
            cell=[[DetailListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        }
        return cell;
    }
    if (indexPath.section == 3) {
        static NSString *cellid = @"cellnew";
        DetailNewsTableViewCell *cell = (DetailNewsTableViewCell*)[tableView dequeueReusableCellWithIdentifier:cellid];
        if (cell == nil)
        {
            cell=[[DetailNewsTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        }
        return cell;
    }
    return nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
