//
//  ShopOrderViewController.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/8.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "ShopOrderViewController.h"
#import "OrderAddrView.h"
#import "OrderSjTableViewCell.h"
#import "OrderOtherTableViewCell.h"
#import "OrderListTableViewCell.h"
#import "OrderGetView.h"
#import "PayViewController.h"
@interface ShopOrderViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(strong,nonatomic)UITableView *table;
@end

@implementation ShopOrderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor lightGrayColor];
    [self initorderview];
    [self initTableView];
    [self initbottomview];
}

-(void)Push{
    PayViewController *order_vc = [[PayViewController alloc] init];
    [self.navigationController pushViewController:order_vc animated:YES];
}

-(void)initbottomview{
    OrderGetView *bottomview = [[OrderGetView alloc] init];
    bottomview.backgroundColor = [UIColor orangeColor];
    [bottomview.g_btn addTarget:self action:@selector(Push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bottomview];
    bottomview.sd_layout
    .leftSpaceToView(self.view,0)
    .rightSpaceToView(self.view,0)
    .bottomSpaceToView(self.view,0)
    .heightIs(40);
}

-(void)initTableView{
    self.table = [[UITableView alloc]initWithFrame:CGRectMake(self.view.frame.origin.x, 64+70+40, self.view.frame.size.width, self.view.frame.size.height-(64+70+40)) style:UITableViewStylePlain];
    _table.separatorStyle = UITableViewCellSeparatorStyleNone;
    _table.showsHorizontalScrollIndicator = NO;
    _table.delegate = self;
    _table.dataSource = self;
    _table.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:_table];
    [_table reloadData];
}


-(void)initorderview{
    OrderAddrView *addrview = [[OrderAddrView alloc] init];
    [self.view addSubview:addrview];
    addrview.sd_layout
    .leftSpaceToView(self.view,0)
    .rightSpaceToView(self.view,0)
    .topSpaceToView(self.view,64)
    .heightIs(40);
    
    OrderAddListView *addlistview = [[OrderAddListView alloc]init];
    [self.view addSubview:addlistview];
    addlistview.sd_layout
    .leftSpaceToView(self.view,0)
    .rightSpaceToView(self.view,0)
    .topSpaceToView(addrview,0)
    .heightIs(70);
    
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2+3;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row == 0) {
        return 35;
    }else if(indexPath.row == 4){
        return 105;
    }
    return 80;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        static NSString *cellid = @"celllsj";
        OrderSjTableViewCell *cell = (OrderSjTableViewCell*)[tableView dequeueReusableCellWithIdentifier:cellid];
        if (cell == nil)
        {
            cell=[[OrderSjTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        }
        return cell;
    }else if(indexPath.row == 4){
        static NSString *cellid = @"celllother";
        OrderOtherTableViewCell *cell = (OrderOtherTableViewCell*)[tableView dequeueReusableCellWithIdentifier:cellid];
        if (cell == nil)
        {
            cell=[[OrderOtherTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        }
        return cell;
    }else{
        static NSString *cellid = @"celllist";
        OrderListTableViewCell *cell = (OrderListTableViewCell*)[tableView dequeueReusableCellWithIdentifier:cellid];
        if (cell == nil)
        {
            cell=[[OrderListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
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
