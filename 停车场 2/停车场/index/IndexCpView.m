//
//  IndexCpView.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/3.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "IndexCpView.h"

@implementation IndexCpView

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
    self.image = [UIImageView new];
    _image.backgroundColor = [UIColor redColor];
    [self addSubview:_image];
    
    _image.sd_layout
    .leftSpaceToView(self,15)
    .rightSpaceToView(self,15)
    .topSpaceToView(self,10)
    .bottomSpaceToView(self,40);
    
    self.lb = [UILabel new];
    _lb.text = @"女性服饰";
    _lb.textColor = [UIColor blackColor];
    _lb.font = [UIFont systemFontOfSize:15];
    [self addSubview:_lb];
    
    _lb.sd_layout
    .topSpaceToView(_image,10)
    .centerXEqualToView(_image)
    .autoHeightRatio(0);
    [_lb setSingleLineAutoResizeWithMaxWidth:180];
    
}

@end
