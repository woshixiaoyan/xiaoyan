//
//  ShopTypeViewController.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/3.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "ShopTypeViewController.h"
#import "ShopTypeTableViewCell.h"
@interface ShopTypeViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(strong,nonatomic)UITableView *table;

@end

@implementation ShopTypeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initTableView];
}
-(void)initTableView{
    self.table = [[UITableView alloc]initWithFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    _table.separatorStyle = UITableViewCellSeparatorStyleNone;
    _table.showsHorizontalScrollIndicator = NO;
    _table.delegate = self;
    _table.dataSource = self;
    _table.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:_table];
    [_table reloadData];
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 55;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
        static NSString *cellid = @"celllx";
        ShopTypeTableViewCell *cell = (ShopTypeTableViewCell*)[tableView dequeueReusableCellWithIdentifier:cellid];
        if (cell == nil)
        {
            cell=[[ShopTypeTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        }
        return cell;
}

-(void)didReceiveMemoryWarning {
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
