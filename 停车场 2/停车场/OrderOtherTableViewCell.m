//
//  OrderOtherTableViewCell.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/8.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "OrderOtherTableViewCell.h"

@implementation OrderOtherTableViewCell

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
    UIView *ps_view = [UIView new];
    [self.contentView addSubview:ps_view];
    ps_view.sd_layout
    .leftSpaceToView(self.contentView,0)
    .rightSpaceToView(self.contentView,0)
    .topSpaceToView(self.contentView,0)
    .heightIs(35);
    
    UILabel *lb_ps = [UILabel new];
    lb_ps.text = @"配送方式";
    lb_ps.font = [UIFont systemFontOfSize:14];
    [ps_view addSubview:lb_ps];
    lb_ps.sd_layout
    .leftSpaceToView(ps_view,12)
    .centerYEqualToView(ps_view)
    .autoHeightRatio(0);
    [lb_ps setSingleLineAutoResizeWithMaxWidth:100];
    
    UIImageView *addback = [UIImageView new];
    addback.backgroundColor = [UIColor orangeColor];
    [ps_view addSubview:addback];
    addback.sd_layout
    .rightSpaceToView(ps_view,15)
    .centerYEqualToView(ps_view)
    .heightIs(17)
    .widthIs(13);
    
    UILabel *lb_qh = [UILabel new];
    lb_qh.text = @"超商取货";
    lb_qh.font = [UIFont systemFontOfSize:14];
    lb_qh.textColor = [UIColor lightGrayColor];
    [ps_view addSubview:lb_qh];
    
    lb_qh.sd_layout
    .rightSpaceToView(addback,5)
    .centerYEqualToView(ps_view)
    .autoHeightRatio(0);
    [lb_qh setSingleLineAutoResizeWithMaxWidth:100];
    
    UIView *ps_bg = [UIView new];
    ps_bg.backgroundColor = [UIColor lightGrayColor];
    [ps_view addSubview:ps_bg];
    ps_bg.sd_layout
    .leftSpaceToView(ps_view,0)
    .rightSpaceToView(ps_view,0)
    .bottomSpaceToView(ps_view,0)
    .heightIs(1);

    
    
    UIView  *ly_view = [UIView new];
    [self.contentView addSubview:ly_view];
    ly_view.sd_layout
    .leftSpaceToView(self.contentView,0)
    .rightSpaceToView(self.contentView,0)
    .topSpaceToView(ps_view,0)
    .heightIs(35);
    
    UILabel *lb_ly = [UILabel new];
    lb_ly.text = @"买家留言:";
    lb_ly.font = [UIFont systemFontOfSize:14];
    [ly_view addSubview:lb_ly];
    lb_ly.sd_layout
    .leftSpaceToView(ly_view,12)
    .centerYEqualToView(ly_view)
    .autoHeightRatio(0);
    [lb_ly setSingleLineAutoResizeWithMaxWidth:100];
    
    UITextField *text_field = [UITextField new];
    text_field.borderStyle = UITextBorderStyleNone;
    text_field.font = [UIFont systemFontOfSize:14];
    text_field.placeholder = @"选填:对本次交易的说明";
    [ly_view addSubview:text_field];
    text_field.sd_layout
    .leftSpaceToView(lb_ly,10)
    .centerYEqualToView(lb_ly)
    .rightSpaceToView(lb_ly,20)
    .heightIs(30);
    
    UIView *ly_bg = [UIView new];
    ly_bg.backgroundColor = [UIColor lightGrayColor];
    [ly_view addSubview:ly_bg];
    ly_bg.sd_layout
    .leftSpaceToView(ly_view,0)
    .rightSpaceToView(ly_view,0)
    .bottomSpaceToView(ly_view,0)
    .heightIs(1);
    
    UIView  *jg_view = [UIView new];
    [self.contentView addSubview:jg_view];
    jg_view.sd_layout
    .leftSpaceToView(self.contentView,0)
    .rightSpaceToView(self.contentView,0)
    .topSpaceToView(ly_view,0)
    .heightIs(35);

    UILabel *lb_price = [UILabel new];
    lb_price.font = [UIFont systemFontOfSize:14];
    lb_price.textColor = [UIColor redColor];
    lb_price.text = @"1000";
    [jg_view addSubview:lb_price];
    lb_price.sd_layout
    .rightSpaceToView(jg_view,12)
    .centerYEqualToView(jg_view)
    .autoHeightRatio(0);
    [lb_price setSingleLineAutoResizeWithMaxWidth:180];
    
    
    UILabel *lb_num = [UILabel new];
    lb_num.font = [UIFont systemFontOfSize:12];
    lb_num.textColor = [UIColor lightGrayColor];
    lb_num.text = @"13";
    [jg_view addSubview:lb_num];
    lb_num.sd_layout
    .rightSpaceToView(lb_price,8)
    .centerYEqualToView(jg_view)
    .autoHeightRatio(0);
    [lb_num setSingleLineAutoResizeWithMaxWidth:180];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
