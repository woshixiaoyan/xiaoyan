//
//  ShopCarView.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/8.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "ShopCarView.h"

@implementation ShopCarView

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
    self.s_btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:_s_btn];
    
    _s_btn.sd_layout
    .leftSpaceToView(self,0)
    .rightSpaceToView(self,0)
    .topSpaceToView(self,0)
    .bottomSpaceToView(self,0);
}


@end
