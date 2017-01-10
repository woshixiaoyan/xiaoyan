//
//  IndexViewController.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/2.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "IndexViewController.h"
#import "IndexTopTableViewCell.h"
#import "IndexLXTableViewCell.h"
#import "IndexListTableViewCell.h"
#import "IndexCPTableViewCell.h"
#import "IndexCPlistTableViewCell.h"
#import "ShopCHViewController.h"
#import "PaiViewController.h"
#import "ShopTypeViewController.h"
#import "PushViewController.h"
#import "KZVideoViewController.h"
#import "AFHTTPRequestOperationManager.h"
@interface IndexViewController ()<UITableViewDelegate,UITableViewDataSource,KZVideoViewControllerDelegate>
{
     KZVideoModel *_videoModel;
}
@property(strong,nonatomic)UITableView *table;
@end

@implementation IndexViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initnavgationview];
    [self initTableView];
    [self initpushview];
}

-(void)initpushview{
    UIButton *push_btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [push_btn addTarget:self action:@selector(PushClick) forControlEvents:UIControlEventTouchUpInside];
    push_btn.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:push_btn];
    
    push_btn.sd_layout
    .rightSpaceToView(self.view,11)
    .bottomSpaceToView(self.view,146/2)
    .widthIs(68/2)
    .heightIs(68/2);
}

-(void)PushClick{
    PushViewController *push_vc = [[PushViewController alloc] init];
    push_vc.title = @"发布";
    [self.navigationController pushViewController:push_vc animated:YES];
//    KZVideoViewController *videoVC = [[KZVideoViewController alloc] init];
//    videoVC.delegate = self;
//    [videoVC startAnimationWithType:KZVideoViewShowTypeSingle];
    
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

-(void)Searchbutton{
    ShopTypeViewController *shop_vc =[[ShopTypeViewController alloc] init];
    [self.navigationController pushViewController:shop_vc animated:YES];
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

-(void)changeIndex:(int)index{
    if (index == 0) {
        ShopCHViewController *shop_vc = [[ShopCHViewController alloc] init];
        [self.navigationController pushViewController:shop_vc animated:YES];
    }
    if (index == 1) {
        PaiViewController *pai_vc = [[PaiViewController alloc] init];
        [self.navigationController pushViewController:pai_vc animated:YES];
    }
    if (index == 4) {
        UIViewController *vc = [UIViewController viewControllerWithStoryBoardName:@"vip" vcIdentifier:@"APVipHomeViewController"];
        [self.navigationController pushViewController:vc animated:YES];
    }
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 1;
    }
    if (section == 1) {
        return 1;
    }
    if (section == 2) {
        return 3;
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
    if (indexPath.section == 0) {
        return 278/2;
    }
    if (indexPath.section == 1) {
        return 218/2;
    }
    if (indexPath.section == 2) {
        return 496/2;
    }
    if (indexPath.section == 3) {
        return 74/2;
    }
    if (indexPath.section == 4) {
        return 268/2;
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        static NSString *cellid = @"cellbigimage";
        IndexTopTableViewCell *cell = (IndexTopTableViewCell*)[tableView dequeueReusableCellWithIdentifier:cellid];
        if (cell == nil)
        {
            cell=[[IndexTopTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        }
        return cell;
    }
    if (indexPath.section == 1) {
        static NSString *cellid = @"celllx";
        IndexLXTableViewCell *cell = (IndexLXTableViewCell*)[tableView dequeueReusableCellWithIdentifier:cellid];
        if (cell == nil)
        {
            cell=[[IndexLXTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        }
        __weak IndexViewController *controller = self;
        cell.btntagIndex = ^(NSInteger index){
            [controller changeIndex:(int)index];
        };
        return cell;
    }
    if (indexPath.section == 2) {
        static NSString *cellid = @"celllist";
        IndexListTableViewCell *cell = (IndexListTableViewCell*)[tableView dequeueReusableCellWithIdentifier:cellid];
        if (cell == nil)
        {
            cell=[[IndexListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        }
        return cell;
    }
    if (indexPath.section == 3) {
        static NSString *cellid = @"cellcp";
        IndexCPTableViewCell *cell = (IndexCPTableViewCell*)[tableView dequeueReusableCellWithIdentifier:cellid];
        if (cell == nil)
        {
            cell=[[IndexCPTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        }
        return cell;
    }
    if (indexPath.section == 4) {
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
    if (section == 3) {
        return 10;
    }
    return 0;
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *headerview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 10)];
    headerview.backgroundColor = [UIColor clearColor];
    return headerview;
}


#pragma mark - KZVideoViewControllerDelegate
- (void)videoViewController:(KZVideoViewController *)videoController didRecordVideo:(KZVideoModel *)videoModel {
    _videoModel = videoModel;
    
    NSError *error = nil;
    NSFileManager *fm = [NSFileManager defaultManager];
    NSDictionary *attri = [fm attributesOfItemAtPath:_videoModel.videoAbsolutePath error:&error];
    NSLog(@"%@",[NSString stringWithFormat:@"视频总大小:%.0fKB",attri.fileSize/1024.0]);
    if (error) {
        NSLog(@"error:%@",error);
    }
    else {
        
    }
    NSURL *imageUrl = [NSURL fileURLWithPath:_videoModel.thumAbsolutePath];
    NSURL *videoUrl = [NSURL fileURLWithPath:_videoModel.videoAbsolutePath];
    [self postdata:imageUrl video:videoUrl];
 //   [self.showView addSubview:player];
}

- (void)videoViewControllerDidCancel:(KZVideoViewController *)videoController {
    NSLog(@"没有录到视频");
}

-(void)postdata:(NSURL *)image video:(NSURL *)video{
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager POST:@"http://123.206.49.77/api/upload/video" parameters:nil constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
        [formData appendPartWithFileURL:image name:@"image" fileName:@"image_3.png" mimeType:@"image/png" error:nil];
        [formData appendPartWithFileURL:video name:@"video" fileName:@"video_3.mp4" mimeType:@"video/mp4" error:nil];
        
    } success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"success");
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"fail");
    }];
};


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
