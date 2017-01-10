//
//  ShopCJTableViewCell.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/6.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "ShopCJTableViewCell.h"

@implementation ShopCJTableViewCell

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
    .leftSpaceToView(_btn,12)
    .centerYEqualToView(self.contentView)
    .widthIs(40)
    .heightIs(40);
    _icon.layer.cornerRadius = _icon.frame.size.width / 2;
    _icon.layer.masksToBounds = YES;

    self.lb_name = [UILabel new];
    _lb_name.font = [UIFont systemFontOfSize:15];
    _lb_name.text = @"小严";
    [self.contentView addSubview:_lb_name];
    _lb_name.sd_layout
    .leftSpaceToView(_icon,12)
    .centerYEqualToView(self.contentView)
    .autoHeightRatio(0);
    [_lb_name setSingleLineAutoResizeWithMaxWidth:180];
    
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
