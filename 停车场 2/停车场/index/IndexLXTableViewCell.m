//
//  IndexLXTableViewCell.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/2.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "IndexLXTableViewCell.h"
#import "IndexLXView.h"
@implementation IndexLXTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initview];
         self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

-(void)gesture:(UITapGestureRecognizer *)gesture{
    int tag = gesture.view.tag - 100;
    _btntagIndex(tag);
}

-(void)initview{
    float viewweight = 50;
    float start = 19;
    float weight = (375 - 2*start-5*viewweight)/4.0;
    for (int i = 0; i < 5; i ++) {
        IndexLXView *lx_view = [[IndexLXView alloc] init];
        lx_view.tag = 100 +i;
        lx_view.userInteractionEnabled = YES;
        UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(gesture:)];
        [lx_view addGestureRecognizer:gesture];
        lx_view.frame = CGRectMake(start+i*(viewweight+weight), 0, viewweight, 218/2);
        switch (i) {
            case 0:
              lx_view.title.text = @"影音商城";
                break;
            case 1:
                 lx_view.title.text = @"微拍卖";
                break;
            case 2:
                 lx_view.title.text = @"微直播";
                break;
            case 3:
                lx_view.title.text = @"拼团";
                break;
            case 4:
               lx_view.title.text = @"会员中心";
                break;
            default:
                break;
        }
        [self.contentView addSubview:lx_view];
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
