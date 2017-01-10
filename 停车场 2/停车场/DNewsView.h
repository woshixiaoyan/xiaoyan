//
//  DNewsView.h
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/6.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DNewsView : UIView

@end


@interface DNewsDDView : UIView
@property(strong,nonatomic)UIImageView *image;
@property(strong,nonatomic)UILabel *lb_title;
@property(strong,nonatomic)UILabel *lb_nums;
-(instancetype)init:(int)tag;
@end
