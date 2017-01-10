//
//  OrderSjTableViewCell.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/8.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "OrderSjTableViewCell.h"

@implementation OrderSjTableViewCell

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
    self.icon = [UIImageView new];
    _icon.backgroundColor = [UIColor orangeColor];
    [self.contentView addSubview:_icon];
    _icon.sd_layout
    .leftSpaceToView(self.contentView,15)
    .centerYEqualToView(self.contentView)
    .heightIs(26)
    .widthIs(26);
    
    self.lb_name = [UILabel new];
    _lb_name.font = [UIFont systemFontOfSize:12];
    _lb_name.text = @"xiaoyan";
    [self.contentView addSubview:_lb_name];
    _lb_name.sd_layout
    .leftSpaceToView(_icon,12)
    .centerYEqualToView(_icon)
    .autoHeightRatio(0);
    [_lb_name setSingleLineAutoResizeWithMaxWidth:180];
    
    UIImageView *addback = [UIImageView new];
    addback.backgroundColor = [UIColor orangeColor];
    [self.contentView addSubview:addback];
    addback.sd_layout
    .rightSpaceToView(self.contentView,15)
    .centerYEqualToView(self.contentView)
    .heightIs(17)
    .widthIs(13);
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
