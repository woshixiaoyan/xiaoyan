//
//  PayListTableViewCell.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/8.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "PayListTableViewCell.h"

@implementation PayListTableViewCell

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
    .leftSpaceToView(self.contentView,15)
    .centerYEqualToView(self.contentView)
    .widthIs(18)
    .heightIs(18);
    
    self.lb_title = [UILabel new];
    _lb_title.font = [UIFont systemFontOfSize:13];
    _lb_title.text = @"银行卡";
    _lb_title.textColor = [UIColor lightGrayColor];
    [self.contentView addSubview:_lb_title];
    _lb_title.sd_layout
    .leftSpaceToView(_btn,8)
    .centerYEqualToView(self.contentView)
    .autoHeightRatio(0);
    [_lb_title setSingleLineAutoResizeWithMaxWidth:180];
    
    UIView *bg = [UIView new];
    bg.backgroundColor = [UIColor lightGrayColor];
    [self.contentView addSubview:bg];
    bg.sd_layout
    .leftSpaceToView(self.contentView,0)
    .rightSpaceToView(self.contentView,0)
    .bottomSpaceToView(self.contentView,0)
    .heightIs(1);
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
