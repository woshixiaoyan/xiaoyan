//
//  PushViewController.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/8.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "PushViewController.h"

@interface PushViewController ()

@end

@implementation PushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initscrollerview];
    [self inittopview];
    [self initoneview];
    [self inittwoview];
    [self initbtn];
}

-(void)initbtn{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor orangeColor];
    btn.titleLabel.text = @"确定发布";
    [self.view addSubview:btn];
    btn.sd_layout
    .leftSpaceToView(self.view,0)
    .rightSpaceToView(self.view,0)
    .heightIs(40)
    .bottomSpaceToView(self.view,0);
}

-(void)inittopview{
    self.ptop_view = [[PushView alloc] init];
    [self.scrollerview addSubview:_ptop_view];
    _ptop_view.sd_layout
    .leftSpaceToView(_scrollerview,0)
    .rightSpaceToView(_scrollerview,0)
    .topSpaceToView(_scrollerview,0)
    .heightIs(306/2);
}
-(void)initoneview{
    self.pone_view = [[PushOneView alloc] init];
    [self.scrollerview addSubview:_pone_view];
    _pone_view.sd_layout
    .leftSpaceToView(_scrollerview,0)
    .rightSpaceToView(_scrollerview,0)
    .topSpaceToView(_ptop_view,5)
    .heightIs(110);
}
-(void)inittwoview{
    self.ptwo_view = [[PushTwoView alloc] init];
    [self.scrollerview addSubview:_ptwo_view];
    _ptwo_view.sd_layout
    .leftSpaceToView(_scrollerview,0)
    .rightSpaceToView(_scrollerview,0)
    .topSpaceToView(_pone_view,5)
    .heightIs(275);
    [_scrollerview setupAutoContentSizeWithBottomView:_ptwo_view bottomMargin:10];
    [_scrollerview layoutSubviews];
}


-(void)initscrollerview{
    self.scrollerview = [UIScrollView new];
   // _scrollerview.delegate = self;
    _scrollerview.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:_scrollerview];
    
    _scrollerview.sd_layout
    .leftSpaceToView(self.view,0)
    .rightSpaceToView(self.view,0)
    .topSpaceToView(self.view,0)
    .bottomSpaceToView(self.view,40);
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
