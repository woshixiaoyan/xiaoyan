//
//  PushListView.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/8.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "PushListView.h"

@implementation PushListView

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
    _lb_title.font = [UIFont systemFontOfSize:18];
    [self addSubview:_lb_title];
    
    self.lb_detail = [UILabel new];
    _lb_detail.textColor = [UIColor lightGrayColor];
    _lb_detail.font = [UIFont systemFontOfSize:16];
    [self addSubview:_lb_detail];
    
    UIImageView *image = [UIImageView new];
    
    image.backgroundColor = [UIColor redColor];
    [self addSubview:image];
    
    image.sd_layout
    .rightSpaceToView(self,14)
    .centerYEqualToView(self)
    .heightIs(13)
    .widthIs(8);
    
    _lb_detail.sd_layout
    .rightSpaceToView(image,5)
    .centerYEqualToView(self)
    .autoHeightRatio(0);
    [_lb_detail setSingleLineAutoResizeWithMaxWidth:180];

    _lb_title.sd_layout
    .leftSpaceToView(self,17)
    .centerYEqualToView(self)
    .autoHeightRatio(0);
    [_lb_title setSingleLineAutoResizeWithMaxWidth:180];
    
    
    
}


@end
