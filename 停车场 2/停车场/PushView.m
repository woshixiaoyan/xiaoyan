//
//  PushView.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/8.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "PushView.h"

@implementation PushView

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
    UIView *v_view = [UIView new];
    v_view.backgroundColor = [UIColor whiteColor];
    [self addSubview:v_view];
    v_view.sd_layout
    .leftSpaceToView(self,0)
    .rightSpaceToView(self,0)
    .topSpaceToView(self,0)
    .heightIs(98/2);
    
    self.tf_name = [UITextField new];
    _tf_name.placeholder = @"商品名称";
    [v_view addSubview:_tf_name];
    _tf_name.sd_layout
    .leftSpaceToView(v_view,17)
    .centerYEqualToView(v_view)
    .rightSpaceToView(v_view,65);
    
    UILabel *lb_length = [UILabel new];
    lb_length.text = @"0/60";
    lb_length.font = [UIFont systemFontOfSize:13];
    lb_length.textColor = [UIColor lightGrayColor];
    [v_view addSubview:lb_length];
    
    lb_length.sd_layout
    .rightSpaceToView(v_view,15)
    .centerYEqualToView(v_view)
    .autoHeightRatio(0);
    [lb_length setSingleLineAutoResizeWithMaxWidth:180];
    
    
    UIView *xian =[UIView new];
    xian.backgroundColor = [UIColor lightGrayColor];
    [v_view addSubview:xian];
    xian.sd_layout
    .leftSpaceToView(v_view,0)
    .rightSpaceToView(v_view,0)
    .bottomSpaceToView(v_view,0)
    .heightIs(1);
    
    self.tv_detail = [UITextView new];
    [self addSubview:_tv_detail];
    
    _tv_detail.sd_layout
    .leftSpaceToView(self,17)
    .topSpaceToView(v_view,12)
    .rightSpaceToView(v_view,65);

    UIView *xian_two =[UIView new];
    xian_two.backgroundColor = [UIColor lightGrayColor];
    [self addSubview:xian_two];
    xian_two.sd_layout
    .leftSpaceToView(self,0)
    .rightSpaceToView(self,0)
    .bottomSpaceToView(self,0)
    .heightIs(1);
    
}


@end
