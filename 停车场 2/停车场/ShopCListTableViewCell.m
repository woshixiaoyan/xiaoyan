//
//  ShopCListTableViewCell.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/6.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "ShopCListTableViewCell.h"

@implementation ShopCListTableViewCell

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
    self.btn = [UIButton buttonWithType:UIButtonTypeCustom];
    _btn.backgroundColor = [UIColor orangeColor];
    [self.contentView addSubview:_btn];
    _btn.sd_layout
    .leftSpaceToView(self.contentView,10)
    .centerYEqualToView(self.contentView)
    .widthIs(18)
    .heightIs(18);
    self.icon = [UIImageView new];
    _icon.backgroundColor = [UIColor redColor];
    [self.contentView addSubview:_icon];
    _icon.sd_layout
    .leftSpaceToView(_btn,15)
    .topSpaceToView(self.contentView,5)
    .bottomSpaceToView(self.contentView,5)
    .widthEqualToHeight(1);
    
    self.lb_title = [UILabel new];
    _lb_title.font = [UIFont systemFontOfSize:15];
    _lb_title.text = @"中放声大哭的负担的空间啊的疯狂打架";
    [self.contentView addSubview:_lb_title];
    
    _lb_title.sd_layout
    .leftSpaceToView(_icon,12)
    .rightSpaceToView(self.contentView,30)
    .topSpaceToView(self.contentView,5)
    .autoHeightRatio(0);
    [_lb_title setSingleLineAutoResizeWithMaxWidth:180];
    
    self.lb_style = [UILabel new];
    _lb_style.text = @"白色";
    _lb_style.font = [UIFont systemFontOfSize:13];
    [self.contentView addSubview:_lb_style];
    
    _lb_style.sd_layout
    .leftEqualToView(_lb_title)
    .topSpaceToView(_lb_title,8)
    .autoHeightRatio(0);
    [_lb_style setSingleLineAutoResizeWithMaxWidth:180];
    
    self.lb_price = [UILabel new];
    _lb_price.font = [UIFont systemFontOfSize:15];
    _lb_price.text = @"123";
    [self.contentView addSubview:_lb_price];
    
    _lb_price.sd_layout
    .leftEqualToView(_lb_title)
    .bottomSpaceToView(self.contentView,10)
    .autoHeightRatio(0);
    [_lb_price setSingleLineAutoResizeWithMaxWidth:180];
    
    self.lb_nums = [UILabel new];
    _lb_nums.font = [UIFont systemFontOfSize:12];
    _lb_nums.text = @"123";
    [self.contentView addSubview:_lb_nums];
    _lb_nums.sd_layout
    .rightSpaceToView(self.contentView,12)
    .bottomSpaceToView(self.contentView,12)
    .autoHeightRatio(0);
    [_lb_nums setSingleLineAutoResizeWithMaxWidth:180];
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
