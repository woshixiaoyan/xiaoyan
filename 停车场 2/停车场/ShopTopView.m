//
//  ShopTopView.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/5.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "ShopTopView.h"
#import "ShopLView.h"
@implementation ShopTopView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self addtopview];
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

-(void)addtopview{
    float weight = self.frame.size.width/4.0;
    for (int i = 0; i < 4; i ++) {
        ShopLView *l_view = [[ShopLView alloc]init];
        l_view.frame = CGRectMake(weight*i, 0, weight, self.frame.size.height);
        switch (i) {
            case 0:
                l_view.lb_title.text = @"地区";
                break;
               case 1:
                 l_view.lb_title.text = @"成色";
                break;
                case 2:
                l_view.lb_title.text = @"分类";
                break;
                case 3:
                l_view.lb_title.text = @"排序";
                break;
            default:
                break;
        }
        [self addSubview:l_view];
    }
}


@end
