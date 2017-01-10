//
//  OrderListTableViewCell.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/8.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "OrderListTableViewCell.h"

@implementation OrderListTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initview];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor blueColor];
        self.contentView.backgroundColor = [UIColor blueColor];
    }
    return self;
}
-(void)initview{
    self.image = [UIImageView new];
    _image.backgroundColor = [UIColor redColor];
    [self.contentView addSubview:_image];
    _image.sd_layout
    .leftSpaceToView(self.contentView,15)
    .topSpaceToView(self.contentView,10)
    .bottomSpaceToView(self.contentView,10)
    .widthEqualToHeight(1);
    
    self.lb_title = [UILabel new];
    _lb_title.font = [UIFont systemFontOfSize:14];
    _lb_title.text = @"我发我的计划我诶";
    [self.contentView addSubview:_lb_title];
    _lb_title.sd_layout
    .topSpaceToView(self.contentView,12)
    .leftSpaceToView(_image,12)
    .rightSpaceToView(self.contentView,20);
    
    self.lb_style = [UILabel new];
    _lb_style.font = [UIFont systemFontOfSize:12];
    _lb_style.text = @"黑色";
    _lb_style.textColor = [UIColor lightGrayColor];
    [self.contentView addSubview:_lb_style];
    _lb_style.sd_layout
    .leftEqualToView(_lb_title)
    .topSpaceToView(_lb_title,5)
    .autoHeightRatio(0);
    [_lb_style setSingleLineAutoResizeWithMaxWidth:100];
    
    self.lb_price = [UILabel new];
    _lb_price.font = [UIFont systemFontOfSize:14];
    _lb_price.textColor = [UIColor redColor];
    _lb_price.text = @"1234";
    [self.contentView addSubview:_lb_price];
    _lb_price.sd_layout
    .leftEqualToView(_lb_title)
    .bottomSpaceToView(self.contentView,16)
    .autoHeightRatio(0);
    [_lb_price setSingleLineAutoResizeWithMaxWidth:100];
    
    self.lb_num = [UILabel new];
    _lb_num.font = [UIFont systemFontOfSize:12];
    _lb_num.text = @"x1";
    _lb_num.textColor = [UIColor lightGrayColor];
    [self.contentView addSubview:_lb_num];
    
    _lb_num.sd_layout
    .rightSpaceToView(self.contentView,18)
    .centerYEqualToView(_lb_price)
    .autoHeightRatio(0);
    [_lb_num setSingleLineAutoResizeWithMaxWidth:100];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
