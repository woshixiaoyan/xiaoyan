//
//  DetailTopTableViewCell.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/6.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "DetailTopTableViewCell.h"

@implementation DetailTopTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initview];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

-(void)initview{
    self.lb_title = [UILabel new];
    _lb_title.font = [UIFont systemFontOfSize:15];
    _lb_title.textColor = [UIColor blackColor];
    _lb_title.text = @"荷兰原装进口奶粉哦哦哦哦哦哦哦荷兰原装进口奶粉哦哦哦哦哦哦哦";
    [self.contentView addSubview:_lb_title];
    
    _lb_title.sd_layout
    .topSpaceToView(self.contentView,10)
    .leftSpaceToView(self.contentView,9)
    .rightSpaceToView(self.contentView,190/2)
    .autoHeightRatio(0);
    
    self.lb_price = [UILabel new];
    _lb_price.textColor = [UIColor redColor];
    _lb_price.font = [UIFont systemFontOfSize:21];
    _lb_price.text = @"123";
    [self.contentView addSubview:_lb_price];
    
    _lb_price.sd_layout
    .leftSpaceToView(self.contentView,22)
    .topSpaceToView(_lb_title,13)
    .heightIs(21);
    [_lb_price setSingleLineAutoResizeWithMaxWidth:100];
    
    self.lb_yjprice = [UILabel new];
    _lb_yjprice.font = [UIFont systemFontOfSize:12];
    _lb_yjprice.textColor = [UIColor lightGrayColor];
    _lb_yjprice.text = @"235";
    [self.contentView addSubview:_lb_yjprice];
    
    _lb_yjprice.sd_layout
    .leftSpaceToView(_lb_price,11)
    .topSpaceToView(_lb_price,-14)
    .heightIs(12);
    [_lb_yjprice setSingleLineAutoResizeWithMaxWidth:100];
    
    UIView * view_x = [UIView new];
    view_x.backgroundColor = [UIColor lightGrayColor];
    [self.lb_yjprice addSubview:view_x];
    
    view_x.sd_layout
    .leftSpaceToView(_lb_yjprice,-1)
    .rightSpaceToView(_lb_yjprice,-1)
    .centerYEqualToView(_lb_yjprice)
    .heightIs(1);
    
    self.lb_pz = [UILabel new];
    _lb_pz.text = @"全新";
    _lb_pz.textColor = [UIColor lightGrayColor];
    _lb_pz.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:_lb_pz];
    
    _lb_pz.sd_layout
    .leftSpaceToView(self.contentView,12)
    .topSpaceToView(_lb_price,12)
    .autoHeightRatio(0);
    [_lb_pz setSingleLineAutoResizeWithMaxWidth:100];
    
    self.lb_num = [UILabel new];
    _lb_num.text = @"1000";
    _lb_num.textColor = [UIColor lightGrayColor];
    _lb_num.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:_lb_num];
    _lb_num.sd_layout
    .leftSpaceToView(_lb_pz,60)
    .topEqualToView(_lb_pz)
    .autoHeightRatio(0);
    [_lb_num setSingleLineAutoResizeWithMaxWidth:100];
    
    self.lb_addr = [UILabel new];
    _lb_addr.text = @"高雄";
    _lb_addr.font = [UIFont systemFontOfSize:15];
    _lb_addr.textColor = [UIColor lightGrayColor];
    [self.contentView addSubview:_lb_addr];
    _lb_addr.sd_layout
    .rightSpaceToView(self.contentView,19)
    .topEqualToView(_lb_pz)
    .autoHeightRatio(0);
    [_lb_addr setSingleLineAutoResizeWithMaxWidth:100];
    
    self.icon_cn = [UIImageView new];
    _icon_cn.backgroundColor = [UIColor orangeColor];
    [self.contentView addSubview:_icon_cn];
    _icon_cn.sd_layout
    .leftSpaceToView(self.contentView,11)
    .topSpaceToView(_lb_pz,11)
    .heightIs(19)
    .widthIs(19);
    
    self.lb_cn = [UILabel new];
    _lb_cn.font = [UIFont systemFontOfSize:14];
    _lb_cn.textColor = [UIColor blueColor];
    _lb_cn.text = @"承诺2天内发货";
    [self.contentView addSubview:_lb_cn];
    _lb_cn.sd_layout
    .leftSpaceToView(_icon_cn,7)
    .centerYEqualToView(_icon_cn)
    .autoHeightRatio(0);
    [_lb_cn setSingleLineAutoResizeWithMaxWidth:100];
    
    UIView *btn_x = [UIView new];
    btn_x.backgroundColor = [UIColor lightGrayColor];
    [self.contentView addSubview:btn_x];
    btn_x.sd_layout
    .rightSpaceToView(self.contentView,136/2)
    .topSpaceToView(self.contentView,13)
    .bottomEqualToView(_lb_title)
    .widthIs(1);
    
    self.btn_love = [UIButton buttonWithType:UIButtonTypeCustom];
    _btn_love.backgroundColor = [UIColor orangeColor];
    [self.contentView addSubview:_btn_love];
    _btn_love.sd_layout
    .rightSpaceToView(self.contentView,20)
    .topEqualToView(_lb_title)
    .widthIs(30)
    .heightIs(25);
    
    self.lb_xnum = [UILabel new];
    _lb_xnum.text = @"123";
    _lb_xnum.font = [UIFont systemFontOfSize:12];
    _lb_xnum.textColor = [UIColor lightGrayColor];
    [self.contentView addSubview:_lb_xnum];
    _lb_xnum.sd_layout
    .topSpaceToView(_btn_love,1)
    .centerXEqualToView(_btn_love)
    .autoHeightRatio(0);
    [_lb_xnum setSingleLineAutoResizeWithMaxWidth:100];
    
    UIView *bg = [UIView new];
    bg.backgroundColor = [UIColor lightGrayColor];
    [self.contentView addSubview:bg];
    bg.sd_layout
    .leftSpaceToView(self.contentView,0)
    .rightSpaceToView(self.contentView,0)
    .bottomSpaceToView(self.contentView,1)
    .heightIs(1);

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
