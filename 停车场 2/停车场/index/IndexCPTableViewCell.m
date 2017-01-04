//
//  IndexCPTableViewCell.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/3.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "IndexCPTableViewCell.h"

@implementation IndexCPTableViewCell

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
    
    
    
    UIView *bg = [UIView new];
    bg.backgroundColor = [UIColor orangeColor];
    [self.contentView addSubview:bg];
    bg.sd_layout
    .leftSpaceToView(self.contentView,7.5)
    .topSpaceToView(self.contentView,9)
    .bottomSpaceToView(self.contentView,9)
    .widthIs(2);
    
    UILabel *lb = [UILabel new];
    lb.textColor = [UIColor blackColor];
    lb.text = @"产品分类";
    lb.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:lb];
    lb.sd_layout
    .leftSpaceToView(bg,6)
    .centerYEqualToView(bg)
    .autoHeightRatio(0);
    [lb setSingleLineAutoResizeWithMaxWidth:100];
    
    UIView *xian =[UIView new];
    xian.backgroundColor = [UIColor lightGrayColor];
    [self.contentView addSubview:xian];
    xian.sd_layout
    .leftEqualToView(self.contentView)
    .rightEqualToView(self.contentView)
    .bottomSpaceToView(self.contentView,1)
    .heightIs(1);
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
