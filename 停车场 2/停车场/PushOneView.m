//
//  PushOneView.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/8.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "PushOneView.h"

@implementation PushOneView

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
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

-(void)initview{
    self.view_fl = [[PushListView alloc] init];
    _view_fl.lb_title.text = @"商品分类";
    [self addSubview:_view_fl];
    _view_fl.sd_layout
    .leftSpaceToView(self,0)
    .rightSpaceToView(self,0)
    .topSpaceToView(self,0)
    .heightIs(55);
    
    self.view_zt = [[PushListView alloc] init];
    _view_zt.lb_title.text = @"商品保存状况";
    [self addSubview:_view_zt];
    _view_zt.sd_layout
    .leftSpaceToView(self,0)
    .rightSpaceToView(self,0)
    .topSpaceToView(_view_fl,0)
    .heightIs(55);
    
    UIView *xian =[UIView new];
    xian.backgroundColor = [UIColor lightGrayColor];
    [_view_fl addSubview:xian];
    xian.sd_layout
    .leftSpaceToView(_view_fl,0)
    .rightSpaceToView(_view_fl,0)
    .bottomSpaceToView(_view_fl,0)
    .heightIs(1);

}


@end
