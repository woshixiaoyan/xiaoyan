//
//  ShopTypeTableViewCell.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/3.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "ShopTypeTableViewCell.h"

@implementation ShopTypeTableViewCell

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
    self.lb = [UILabel new];
    _lb.font = [UIFont systemFontOfSize:15];
    _lb.text = @"123";
    [self.contentView addSubview:_lb];
    
    _lb.sd_layout
    .leftSpaceToView(self.contentView,18)
    .centerYEqualToView(self.contentView)
    .autoHeightRatio(0);
    [_lb setSingleLineAutoResizeWithMaxWidth:180];
    
    UIImageView *image = [UIImageView new];
    
    image.backgroundColor = [UIColor redColor];
    [self.contentView addSubview:image];
    
    image.sd_layout
    .rightSpaceToView(self.contentView,14)
    .centerYEqualToView(self.contentView)
    .heightIs(13)
    .widthIs(8);
    
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
