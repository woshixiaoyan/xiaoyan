//
//  ShopListCollectionViewCell.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/5.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "ShopListCollectionViewCell.h"

@implementation ShopListCollectionViewCell
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self initview];
    }
    return self;
}

-(void)initview{
    self.image = [UIImageView new];
    _image.backgroundColor = [UIColor redColor];
    [self.contentView addSubview:_image];
    _image.sd_layout
    .topSpaceToView(self.contentView,5)
    .leftSpaceToView(self.contentView,10)
    .rightSpaceToView(self.contentView,10)
    .heightIs(342/2);
    
    self.lb_title = [UILabel new];
    _lb_title.text = @"荷兰原装进口奶粉哦哦哦哦哦哦哦";
    _lb_title.font = [UIFont systemFontOfSize:12];
    _lb_title.textColor = [UIColor blackColor];
    [self.contentView addSubview:_lb_title];
    
    _lb_title.sd_layout
    .leftSpaceToView(self.contentView,6)
    .topSpaceToView(_image,13)
    .rightSpaceToView(self.contentView,12)
    .autoHeightRatio(0);
    
    self.lb_price = [UILabel new];
    _lb_price.text = @"333";
    _lb_price.textColor = [UIColor orangeColor];
    _lb_price.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:_lb_price];
    
    _lb_price.sd_layout
    .leftEqualToView(_lb_title)
    .topSpaceToView(_lb_title,9)
    .autoHeightRatio(0);
    [_lb_price setSingleLineAutoResizeWithMaxWidth:100];
    
    self.btn_sc = [UIButton buttonWithType:UIButtonTypeCustom];
    _btn_sc.backgroundColor = [UIColor redColor];
    [self.contentView addSubview:_btn_sc];
    
    _btn_sc.sd_layout
    .rightEqualToView(_lb_title)
    .topSpaceToView(_lb_title,10)
    .heightIs(20)
    .widthIs(20);
    
    self.lb_scnum = [UILabel new];
    _lb_scnum.text = @"21";
    _lb_scnum.textColor = [UIColor darkGrayColor];
    _lb_scnum.font = [UIFont systemFontOfSize:10];
    [self.contentView addSubview:_lb_scnum];
    _lb_scnum.sd_layout
    .centerXEqualToView(_btn_sc)
    .topSpaceToView(_btn_sc,3)
    .autoHeightRatio(0);
    [_lb_scnum setSingleLineAutoResizeWithMaxWidth:50];
}

@end
