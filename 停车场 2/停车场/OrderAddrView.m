//
//  OrderAddrView.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/8.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "OrderAddrView.h"

@implementation OrderAddrView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(id)init{
    self = [super init];
    if (self) {
        [self initview];
        self.backgroundColor = [UIColor darkGrayColor];
    }
    return self;
}


-(void)initview{
    UIView *addr_view = [UIView new];
    addr_view.backgroundColor = [UIColor lightGrayColor];
    [self addSubview:addr_view];
    addr_view.sd_layout
    .leftSpaceToView(self,0)
    .rightSpaceToView(self,0)
    .topSpaceToView(self,0)
    .heightIs(40);
    
    UIImageView *addimage = [UIImageView new];
    addimage.backgroundColor = [UIColor orangeColor];
    [addr_view addSubview:addimage];
    addimage.sd_layout
    .leftSpaceToView(addr_view,12)
    .centerYEqualToView(addr_view)
    .heightIs(26)
    .widthIs(26);
    
    UILabel *addlable = [UILabel new];
    addlable.textColor = [UIColor blackColor];
    addlable.font = [UIFont systemFontOfSize:15];
    addlable.text = @"添加新的收货地址";
    [addr_view addSubview:addlable];
    addlable.sd_layout
    .leftSpaceToView(addimage,12)
    .centerYEqualToView(addimage)
    .autoHeightRatio(0);
    [addlable setSingleLineAutoResizeWithMaxWidth:180];
    
    UIImageView *addback = [UIImageView new];
    addback.backgroundColor = [UIColor orangeColor];
    [addr_view addSubview:addback];
    addback.sd_layout
    .rightSpaceToView(addr_view,15)
    .centerYEqualToView(addr_view)
    .heightIs(17)
    .widthIs(13);
}

@end

@implementation OrderAddListView

-(instancetype)init{
    self = [super init];
    if (self) {
        [self initview];
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

-(void)initview{
    self.lb_name = [UILabel new];
    _lb_name.text = @"张三";
    _lb_name.font = [UIFont systemFontOfSize:12];
    [self addSubview:_lb_name];
    _lb_name.sd_layout
    .leftSpaceToView(self,12)
    .topSpaceToView(self,8)
    .autoHeightRatio(0);
    [_lb_name setSingleLineAutoResizeWithMaxWidth:100];
    
    self.lb_tel = [UILabel new];
    _lb_tel.text = @"13212714554";
    _lb_tel.font = [UIFont systemFontOfSize:12];
    [self addSubview:_lb_tel];
    _lb_tel.sd_layout
    .leftSpaceToView(_lb_name,20)
    .topEqualToView(_lb_name)
    .autoHeightRatio(0);
    [_lb_tel setSingleLineAutoResizeWithMaxWidth:180];
    
    self.icon = [UIImageView new];
    _icon.backgroundColor = [UIColor orangeColor];
    [self addSubview:_icon];
    _icon.sd_layout
    .leftSpaceToView(self,12)
    .topSpaceToView(_lb_name,8)
    .heightIs(26)
    .widthIs(26);
    
    self.lb_addr = [UILabel new];
    _lb_addr.text = @"湖北省武汉市那里那里";
    _lb_addr.font = [UIFont systemFontOfSize:12];
    [self addSubview:_lb_addr];
    _lb_addr.sd_layout
    .leftSpaceToView(_icon,20)
    .centerYEqualToView(_icon)
    .autoHeightRatio(0);
    [_lb_addr setSingleLineAutoResizeWithMaxWidth:200];
}
@end

