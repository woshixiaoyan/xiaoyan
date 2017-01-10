//
//  PushTwoView.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/8.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "PushTwoView.h"

@implementation PushTwoView

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
    self.view_gg = [[PushListView alloc] init];
    _view_gg.lb_title.text = @"规格型号";
    [self addSubview:_view_gg];
    _view_gg.sd_layout
    .leftSpaceToView(self,0)
    .rightSpaceToView(self,0)
    .topSpaceToView(self,0)
    .heightIs(55);
    
    self.view_cn = [[PushListView alloc] init];
    _view_cn.lb_title.text = @"承诺发货";
    [self addSubview:_view_cn];
    _view_cn.sd_layout
    .leftSpaceToView(self,0)
    .rightSpaceToView(self,0)
    .topSpaceToView(_view_gg,0)
    .heightIs(55);
    
    UIView *xian_gg =[UIView new];
    xian_gg.backgroundColor = [UIColor lightGrayColor];
    [_view_gg addSubview:xian_gg];
    xian_gg.sd_layout
    .leftSpaceToView(_view_gg,0)
    .rightSpaceToView(_view_gg,0)
    .bottomSpaceToView(_view_gg,0)
    .heightIs(1);
    
    UIView *xian_cn =[UIView new];
    xian_cn.backgroundColor = [UIColor lightGrayColor];
    [_view_cn addSubview:xian_cn];
    xian_cn.sd_layout
    .leftSpaceToView(_view_cn,0)
    .rightSpaceToView(_view_cn,0)
    .bottomSpaceToView(_view_cn,0)
    .heightIs(1);
    
    self.view_addr = [[PushListView alloc] init];
    _view_addr.lb_title.text = @"发货地";
    [self addSubview:_view_addr];
    _view_addr.sd_layout
    .leftSpaceToView(self,0)
    .rightSpaceToView(self,0)
    .topSpaceToView(_view_cn,0)
    .heightIs(55);
    
    self.view_ese = [[PushListView alloc] init];
    _view_ese.lb_title.text = @"选择物流方式";
    [self addSubview:_view_ese];
    _view_ese.sd_layout
    .leftSpaceToView(self,0)
    .rightSpaceToView(self,0)
    .topSpaceToView(_view_addr,0)
    .heightIs(55);
    
    UIView *xian_addr =[UIView new];
    xian_addr.backgroundColor = [UIColor lightGrayColor];
    [_view_addr addSubview:xian_addr];
    xian_addr.sd_layout
    .leftSpaceToView(_view_addr,0)
    .rightSpaceToView(_view_addr,0)
    .bottomSpaceToView(_view_addr,0)
    .heightIs(1);
    
    UIView *xian_ese =[UIView new];
    xian_ese.backgroundColor = [UIColor lightGrayColor];
    [_view_ese addSubview:xian_ese];
    xian_ese.sd_layout
    .leftSpaceToView(_view_ese,0)
    .rightSpaceToView(_view_ese,0)
    .bottomSpaceToView(_view_ese,0)
    .heightIs(1);
    
    self.view_pt = [[PushListView alloc] init];
    _view_pt.lb_title.text = @"是否设定拼团商品";
    [self addSubview:_view_pt];
    _view_pt.sd_layout
    .leftSpaceToView(self,0)
    .rightSpaceToView(self,0)
    .topSpaceToView(_view_ese,0)
    .heightIs(55);

    UIView *xian_pt =[UIView new];
    xian_pt.backgroundColor = [UIColor lightGrayColor];
    [_view_pt addSubview:xian_pt];
    xian_pt.sd_layout
    .leftSpaceToView(_view_pt,0)
    .rightSpaceToView(_view_pt,0)
    .bottomSpaceToView(_view_pt,0)
    .heightIs(1);

}


@end
