//
//  PaiViewController.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/3.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "PaiViewController.h"
#import "IndexLXTableViewCell.h"
#import "IndexCPlistTableViewCell.h"
@interface PaiViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(strong,nonatomic)UITableView *table;

@end

@implementation PaiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initnavgationview];
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
-(void)initnavgationview{
    [self initleftview];
    [self initrightview];
    [self inittitleview];
}

-(void)inittitleview{
    UIButton *titlebut = [UIButton buttonWithType:UIButtonTypeSystem];
    titlebut.backgroundColor = [UIColor whiteColor];
    // [leftbut setBackgroundImage:[UIImage imageNamed:@"search"] forState:UIControlStateNormal];
    titlebut.backgroundColor = [UIColor whiteColor];
    [titlebut addTarget:self action:@selector(Searchbutton) forControlEvents:UIControlEventTouchUpInside];
    titlebut.frame = CGRectMake(0.0, 0.0, 220/2, 44/2);
    self.navigationItem.titleView = titlebut;
}

-(void)initleftview{
    UIButton *leftbut = [UIButton buttonWithType:UIButtonTypeSystem];
    // [leftbut setBackgroundImage:[UIImage imageNamed:@"search"] forState:UIControlStateNormal];
    leftbut.backgroundColor = [UIColor whiteColor];
    [leftbut addTarget:self action:@selector(Searchbutton) forControlEvents:UIControlEventTouchUpInside];
    leftbut.frame = CGRectMake(0.0, 0.0, 44/2, 44/2);
    //   leftbut.titleLabel.text = @"123";
    UIBarButtonItem *leftitem = [[UIBarButtonItem alloc] initWithCustomView:leftbut];
    self.navigationItem.leftBarButtonItem = leftitem;
}

-(void)initrightview{
    UIButton *shopbtn = [UIButton buttonWithType:UIButtonTypeSystem];
    //  [rightbut setBackgroundImage:[UIImage imageNamed:@"set"] forState:UIControlStateNormal];
    shopbtn.backgroundColor = [UIColor whiteColor];
    [shopbtn addTarget:self action:@selector(Setbutton) forControlEvents:UIControlEventTouchUpInside];
    shopbtn.frame = CGRectMake(0.0, 0.0, 44/2, 44/2);
    //   leftbut.titleLabel.text = @"123";
    UIBarButtonItem *shopitem = [[UIBarButtonItem alloc] initWithCustomView:shopbtn];
    
    UIButton *messbtn = [UIButton buttonWithType:UIButtonTypeSystem];
    //  [rightbut setBackgroundImage:[UIImage imageNamed:@"set"] forState:UIControlStateNormal];
    messbtn.backgroundColor = [UIColor whiteColor];
    [messbtn addTarget:self action:@selector(Setbutton) forControlEvents:UIControlEventTouchUpInside];
    messbtn.frame = CGRectMake(0.0, 0.0, 44/2, 44/2);
    //   leftbut.titleLabel.text = @"123";
    UIBarButtonItem *messitem = [[UIBarButtonItem alloc] initWithCustomView:messbtn];
    self.navigationItem.rightBarButtonItems = [NSArray arrayWithObjects:shopitem,messitem, nil];
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 1;
    }
    if (section == 1) {
        return 3;
    }
    return 0;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 0) {
        return 218/2;
    }
    if (indexPath.section == 1) {
        return 268/2;
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        static NSString *cellid = @"celllx";
        IndexLXTableViewCell *cell = (IndexLXTableViewCell*)[tableView dequeueReusableCellWithIdentifier:cellid];
        if (cell == nil)
        {
            cell=[[IndexLXTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        }
        return cell;
    }
    if (indexPath.section == 1) {
        static NSString *cellid = @"cellcplist";
        IndexCPlistTableViewCell *cell = (IndexCPlistTableViewCell*)[tableView dequeueReusableCellWithIdentifier:cellid];
        if (cell == nil)
        {
            cell=[[IndexCPlistTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        }
        return cell;
    }
    return nil;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section == 1) {
        return 10;
    }
    return 0;
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *headerview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 10)];
    headerview.backgroundColor = [UIColor clearColor];
    return headerview;
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
