//
//  PayTopTableViewCell.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/8.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "PayTopTableViewCell.h"

@implementation PayTopTableViewCell

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
    UIView *dd_view = [UIView new];
    dd_view.backgroundColor = [UIColor whiteColor];
    [self.contentView addSubview:dd_view];
    dd_view.sd_layout
    .leftSpaceToView(self.contentView,0)
    .rightSpaceToView(self.contentView,0)
    .topSpaceToView(self.contentView,0)
    .heightIs(30);
    
    self.lb_dd = [UILabel new];
    _lb_dd.font = [UIFont systemFontOfSize:12];
    _lb_dd.textColor = [UIColor lightGrayColor];
    _lb_dd.text = @"订单号";
    [dd_view addSubview:_lb_dd];
    _lb_dd.sd_layout
    .leftSpaceToView(dd_view,25)
    .centerYEqualToView(dd_view)
    .autoHeightRatio(0);
    [_lb_dd setSingleLineAutoResizeWithMaxWidth:100];
    
    self.lb_title = [UILabel new];
    _lb_title.font = [UIFont systemFontOfSize:12];
    _lb_title.textColor = [UIColor blackColor];
    _lb_title.text = @"24583295";
    [dd_view addSubview:_lb_title];
    _lb_title.sd_layout
    .leftSpaceToView(_lb_dd,8)
    .centerYEqualToView(_lb_dd)
    .autoHeightRatio(0);
    [_lb_title setSingleLineAutoResizeWithMaxWidth:180];
    
    UIView *bg = [UIView new];
    bg.backgroundColor = [UIColor lightGrayColor];
    [dd_view addSubview:bg];
    bg.sd_layout
    .leftSpaceToView(dd_view,0)
    .rightSpaceToView(dd_view,0)
    .bottomSpaceToView(dd_view,0)
    .heightIs(1);
    
    UIView *fs_view = [UIView new];
    fs_view.backgroundColor = [UIColor lightGrayColor];
    [self.contentView addSubview:fs_view];
    fs_view.sd_layout
    .leftSpaceToView(self.contentView,0)
    .rightSpaceToView(self.contentView,0)
    .topSpaceToView(dd_view,0)
    .heightIs(30);
    UILabel *lb_fs = [UILabel new];
    lb_fs.text = @"付款方式";
    lb_fs.font = [UIFont systemFontOfSize:13];
    [fs_view addSubview:lb_fs];
    lb_fs.sd_layout
    .leftSpaceToView(fs_view,12)
    .centerYEqualToView(fs_view)
    .autoHeightRatio(0);
    [lb_fs setSingleLineAutoResizeWithMaxWidth:190];
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
