//
//  DetailewsTableViewCell.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/6.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "DetailNewsTableViewCell.h"
#import "DNewsView.h"
@implementation DetailNewsTableViewCell

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
    .leftSpaceToView(self.contentView,14)
    .topSpaceToView(self.contentView,7)
    .widthIs(31)
    .heightIs(31);
    _icon.layer.cornerRadius = _icon.frame.size.width / 2;
    _icon.layer.borderWidth = 1;
    _icon.layer.masksToBounds = YES;
    
    self.lb_name = [UILabel new];
    _lb_name.text = @"陈菲";
    _lb_name.textColor = [UIColor blackColor];
    _lb_name.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:_lb_name];
    
    _lb_name.sd_layout
    .leftSpaceToView(_icon,10)
    .topEqualToView(_icon)
    .autoHeightRatio(0);
    [_lb_name setSingleLineAutoResizeWithMaxWidth:180];
    
    self.lb_pj = [UILabel new];
    _lb_pj.font = [UIFont systemFontOfSize:10];
    _lb_pj.textColor = [UIColor blackColor];
    _lb_pj.backgroundColor = [UIColor lightGrayColor];
    _lb_pj.text = @"评价123";
    [self.contentView addSubview:_lb_pj];
    
    _lb_pj.sd_layout
    .leftEqualToView(_lb_name)
    .topSpaceToView(_lb_name,0)
    .autoHeightRatio(0);
    [_lb_pj setSingleLineAutoResizeWithMaxWidth:100];
    _lb_pj.layer.cornerRadius = 3;
    _lb_pj.layer.masksToBounds = YES;
    
    DNewsView *new_view = [[DNewsView alloc] init];
    [self.contentView addSubview:new_view];
    new_view.sd_layout
    .leftSpaceToView(self.contentView,68/2)
    .rightSpaceToView(self.contentView,68/2)
    .topSpaceToView(_icon,5)
    .heightIs(60);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
