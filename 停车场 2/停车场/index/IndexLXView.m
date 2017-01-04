//
//  IndexLXView.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/2.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "IndexLXView.h"

@implementation IndexLXView

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
    self.btn = [UIButton buttonWithType:UIButtonTypeCustom];
    _btn.backgroundColor = [UIColor orangeColor];
    [self addSubview:_btn];
    
    _btn.sd_layout
    .leftSpaceToView(self,1)
    .rightSpaceToView(self,1)
    .topSpaceToView(self,19)
    .widthIs(45)
    .heightIs(45);
    
    self.title = [UILabel new];
    _title.textColor = [UIColor darkGrayColor];
    _title.font = [UIFont systemFontOfSize:12];
    [self addSubview:_title];
    
    _title.sd_layout
    .centerXEqualToView(_btn)
    .topSpaceToView(_btn,8)
    .autoHeightRatio(0);
    [_title setSingleLineAutoResizeWithMaxWidth:100];
}

@end
