//
//  DetailListTableViewCell.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/6.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "DetailListTableViewCell.h"

@implementation DetailListTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}



-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initview];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
    }
    return self;
}

-(void)initview{
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor whiteColor];
    [self.contentView addSubview:view];
    view.sd_layout
    .leftSpaceToView(self.contentView,0)
    .rightSpaceToView(self.contentView,0)
    .topSpaceToView(self.contentView,0)
    .bottomSpaceToView(self.contentView,5);
    
    self.lb_detail = [UILabel new];
    _lb_detail.font = [UIFont systemFontOfSize:15];
    _lb_detail.text = @"请选择规格型号";
    _lb_detail.textColor = [UIColor lightGrayColor];
    [view addSubview:_lb_detail];
    
    _lb_detail.sd_layout
    .leftSpaceToView(view,12)
    .centerYEqualToView(view)
    .autoHeightRatio(0);
    [_lb_detail setSingleLineAutoResizeWithMaxWidth:180];
    
    self.lb_title = [UILabel new];
    _lb_title.font = [UIFont systemFontOfSize:15];
    _lb_title.text = @"中号";
    _lb_title.textColor = [UIColor blackColor];
    [view addSubview:_lb_title];
    
    _lb_title.sd_layout
    .leftSpaceToView(_lb_detail,14)
    .centerYEqualToView(_lb_detail)
    .autoHeightRatio(0);
    [_lb_title setSingleLineAutoResizeWithMaxWidth:180];
    
    UIImageView *image = [UIImageView new];
    image.backgroundColor = [UIColor orangeColor];
    [view addSubview:image];
    
    image.sd_layout
    .rightSpaceToView(view,17)
    .centerYEqualToView(_lb_detail)
    .heightIs(17)
    .widthIs(13);
    UIView *bg = [UIView new];
    bg.backgroundColor = [UIColor lightGrayColor];
    [view addSubview:bg];
    bg.sd_layout
    .leftSpaceToView(view,0)
    .rightSpaceToView(view,0)
    .bottomSpaceToView(view,0)
    .heightIs(1);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
