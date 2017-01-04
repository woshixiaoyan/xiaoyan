//
//  IndexCPlistTableViewCell.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/3.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "IndexCPlistTableViewCell.h"
#import "IndexCpView.h"
@implementation IndexCPlistTableViewCell

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
    float weight = 375/3.0;
    UIColor *color = [UIColor lightGrayColor];
    UIView *xx_one = [UIView new];
    xx_one.backgroundColor = color;
    [self.contentView addSubview:xx_one];
    
    xx_one.sd_layout
    .leftSpaceToView(self.contentView,weight)
    .topSpaceToView(self.contentView,0)
    .bottomSpaceToView(self.contentView,0)
    .widthIs(1);
    
    UIView *xx_two = [UIView new];
    xx_two.backgroundColor = color;
    [self.contentView addSubview:xx_two];
    
    xx_two.sd_layout
    .leftSpaceToView(self.contentView,weight*2)
    .topSpaceToView(self.contentView,0)
    .bottomSpaceToView(self.contentView,0)
    .widthIs(1);
    
    
    UIView *xx_xx = [UIView new];
    xx_xx.backgroundColor = color;
    [self.contentView addSubview:xx_xx];
    
    xx_xx.sd_layout
    .leftSpaceToView(self.contentView,0)
    .rightSpaceToView(self.contentView,0)
    .bottomSpaceToView(self.contentView,1)
    .heightIs(1);
    [self initcpview];
}


-(void)initcpview{
    float weight = 375/3.0;
    for (int i = 0; i < 3; i ++) {
        IndexCpView *cp_view = [[IndexCpView alloc] init];
        cp_view.frame = CGRectMake(weight*i, 0, weight, 272/2);
        [self.contentView addSubview:cp_view];
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



@end
