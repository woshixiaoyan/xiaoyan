//
//  ShopLView.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/5.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "ShopLView.h"

@implementation ShopLView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(instancetype)init{
    self = [super init];
    if (self) {
        [self initview];
    }
    return self;
}

-(void)initview{
    self.lb_title = [UILabel new];
    _lb_title.textColor = [UIColor blackColor];
    _lb_title.font = [UIFont systemFontOfSize:15];
    [self addSubview:_lb_title];
    _lb_title.sd_layout
    .centerYEqualToView(self)
    .centerXEqualToView(self)
    .autoHeightRatio(0);
    [_lb_title setSingleLineAutoResizeWithMaxWidth:100];
    
    self.icon = [UIImageView new];
    _icon.backgroundColor = [UIColor lightGrayColor];
    [self addSubview:_icon];
    _icon.sd_layout
    .leftSpaceToView(_lb_title,3)
    .centerYEqualToView(self)
    .heightIs(10)
    .widthIs(10);
}

@end
