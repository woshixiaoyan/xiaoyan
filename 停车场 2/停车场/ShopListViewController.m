//
//  ShopListViewController.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/3.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//
NSString *const MJCollectionViewCellIdentifier = @"Cell";

#import "ShopListViewController.h"
#import "ShopTopView.h"
#import "ShopListCollectionViewCell.h"
#import "ShopDetailViewController.h"
@interface ShopListViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property(strong,nonatomic)ShopTopView *top_view;
@end

@implementation ShopListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor lightGrayColor];
    [self addshoptopview];
    [self addcollectionview];
}

-(UICollectionViewFlowLayout *)initlayout{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
   layout.sectionInset = UIEdgeInsetsMake(8, 6, 0, 6);
    layout.itemSize = CGSizeMake(self.view.frame.size.width/2.0-12, 540/2);

    layout.minimumInteritemSpacing = 0;
    layout.minimumLineSpacing = 6;
    return layout;
}



-(void)addcollectionview{
    UICollectionViewFlowLayout *layout = [self initlayout];
    self.collectionview = [[UICollectionView alloc] initWithFrame:CGRectMake(0,_top_view.frame.size.height + _top_view.frame.origin.y ,self.view.frame.size.width , self.view.frame.size.height - (_top_view.frame.size.height + _top_view.frame.origin.y))collectionViewLayout:layout];
    _collectionview.backgroundColor = [UIColor clearColor];
    [self.collectionview registerClass:[ShopListCollectionViewCell class] forCellWithReuseIdentifier:MJCollectionViewCellIdentifier];
    _collectionview.delegate = self;
    _collectionview.dataSource = self;
    [self.view addSubview:_collectionview];
    [_collectionview reloadData];
}


-(void)addshoptopview{
    self.top_view = [[ShopTopView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, 74/2)];
  //  top_view.backgroundColor = [UIColor redColor];
    [self.view addSubview:_top_view];
}


#pragma mark - collection数据源代理
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ShopListCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:MJCollectionViewCellIdentifier forIndexPath:indexPath];
    cell.backgroundColor = [UIColor whiteColor];
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    ShopDetailViewController *detail_vc = [[ShopDetailViewController alloc] init];
    [self.navigationController pushViewController:detail_vc animated:YES];
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
