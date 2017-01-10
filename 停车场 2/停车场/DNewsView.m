//
//  DNewsView.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/6.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "DNewsView.h"

@implementation DNewsView

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
    UIView *v;
    for (int i = 0; i < 3; i ++) {
        DNewsDDView *dd_view;
        if (i == 1) {
            dd_view = [[DNewsDDView alloc] init:88];
            dd_view.lb_title.text = @"全部商品";
        }else if(i == 0){
            dd_view = [[DNewsDDView alloc] init:0];
            dd_view.lb_title.text = @"加入收藏";
        }else{
           dd_view = [[DNewsDDView alloc] init:0];
            dd_view.lb_title.text = @"进店逛逛";
        }
        v = dd_view;
        [self addSubview:dd_view];
        dd_view.sd_layout
        .leftSpaceToView(v,0)
        .topSpaceToView(self,0)
        .bottomSpaceToView(self,0)
        .widthIs(self.frame.size.width/3.0);
    }
    [self layoutSubviews];
}


@end


@implementation DNewsDDView

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

-(instancetype)init:(int)tag{
    self = [super init];
    if (self) {
        [self initview];
        self.tag = tag;
    }
    return self;
}



-(void)initview{
   __strong UIView *view;
    if (self.tag == 0) {
        self.image = [UIImageView new];
        _image.backgroundColor = [UIColor orangeColor];
        [self addSubview:_image];
        _image.sd_layout
        .leftSpaceToView(self,5)
        .centerXEqualToView(self)
        .widthIs(22)
        .heightIs(20);
        view = _image;
    }else{
        self.lb_nums = [UILabel new];
        _lb_nums.textColor = [UIColor orangeColor];
        _lb_nums.text = @"88";
        _lb_nums.font = [UIFont systemFontOfSize:15];
        [self addSubview:_lb_nums];
        _lb_nums.sd_layout
        .leftSpaceToView(self,5)
        .centerXEqualToView(self)
        .autoHeightRatio(0);
        [_lb_nums setPreferredMaxLayoutWidth:100];
        view = _lb_nums;
    }
    self.lb_title = [UILabel new];
    _lb_title.text = @"加入收藏";
    _lb_title.font = [UIFont systemFontOfSize:14];
    [self addSubview:_lb_title];
    _lb_title.sd_layout
    .topSpaceToView(view,2)
    .centerXEqualToView(view)
    .autoHeightRatio(0);
    [_lb_title setSingleLineAutoResizeWithMaxWidth:180];
}


@end


