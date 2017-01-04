//
//  IndexListTableViewCell.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/2.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "IndexListTableViewCell.h"

@implementation IndexListTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initview];
         self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self layoutSubviews];
    }
    return self;
}


-(void)initview{
    self.image = [UIImageView new];
    _image.backgroundColor = [UIColor orangeColor];
    [self.contentView addSubview:_image];
    _image.sd_layout
    .leftSpaceToView(self.contentView,6)
    .rightSpaceToView(self.contentView,6)
    .topSpaceToView(self.contentView,6)
    .heightIs(292/2);
    
    self.image_zt = [UIImageView new];
    _image_zt.backgroundColor = [UIColor redColor];
    [self.contentView addSubview:_image_zt];
    _image_zt.sd_layout
    .leftSpaceToView(self.contentView,4)
    .topSpaceToView(self.contentView,11)
    .widthIs(98)
    .heightIs(36);
    
    
    self.lb_title = [UILabel new];
    _lb_title.text = @"呃地方和 i 㷣发挥 i hi 阿富汗 i";
    _lb_title.textColor = [UIColor blackColor];
    _lb_title.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:_lb_title];
    _lb_title.sd_layout
    .leftSpaceToView(self.contentView,11)
    .rightSpaceToView(self.contentView,12)
    .topSpaceToView(_image,13)
    .autoHeightRatio(0);
    
    
    self.lb_price = [UILabel new];
    _lb_price.text = @"$123";
    _lb_price.textColor = [UIColor orangeColor];
    _lb_price.font = [UIFont systemFontOfSize:28];
    [self.contentView addSubview:_lb_price];
    _lb_price.sd_layout
    .leftSpaceToView(self.contentView,12)
    .bottomSpaceToView(self.contentView,21)
    .autoHeightRatio(0);
    [_lb_price setSingleLineAutoResizeWithMaxWidth:120];
    
    self.lb_yprice = [UILabel new];
     _lb_yprice.text = @"$123";
    _lb_yprice.textColor = [UIColor lightGrayColor];
    _lb_yprice.font = [UIFont systemFontOfSize:12];
    [self.contentView addSubview:_lb_yprice];
    
    _lb_yprice.sd_layout
    .leftSpaceToView(_lb_price,7)
    
    .bottomSpaceToView(self.contentView,28)
    .autoHeightRatio(0);
    [_lb_yprice setSingleLineAutoResizeWithMaxWidth:120];
    
    self.view_x = [UIView new];
    _view_x.backgroundColor = [UIColor lightGrayColor];
    [self.lb_yprice addSubview:_view_x];
    
    _view_x.sd_layout
    .leftSpaceToView(_lb_yprice,-1)
    .rightSpaceToView(_lb_yprice,-1)
    .centerYEqualToView(_lb_yprice)
    .heightIs(1);
    
    
    self.lb_sy = [UILabel new];
    _lb_sy.text = @"最后120组";
    _lb_sy.textColor = [UIColor blueColor];
    _lb_sy.font = [UIFont systemFontOfSize:14];
    [self.contentView addSubview:_lb_sy];
    
    _lb_sy.sd_layout
    .leftSpaceToView(_lb_yprice,15)
    .bottomSpaceToView(self.contentView,26)
    .autoHeightRatio(0);
    [_lb_sy setSingleLineAutoResizeWithMaxWidth:120];
    
    self.btn_qg = [UIButton buttonWithType:UIButtonTypeCustom];
    _btn_qg.backgroundColor = [UIColor orangeColor];
    _btn_qg.titleLabel.text = @"立即抢购";
    [_btn_qg setTitle:@"立即抢购" forState:UIControlStateNormal];
    _btn_qg.titleLabel.textColor = [UIColor whiteColor];
    _btn_qg.titleLabel.font = [UIFont systemFontOfSize:16];
    [self.contentView addSubview:_btn_qg];
    
    _btn_qg.sd_layout
    .rightSpaceToView(self.contentView,11)
    .bottomSpaceToView(self.contentView,14)
    .widthIs(192/2)
    .heightIs(33);
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
