//
//  OrderListTableViewCell.h
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/8.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OrderListTableViewCell : UITableViewCell
@property(strong,nonatomic)UIImageView *image;
@property(strong,nonatomic)UILabel *lb_title;
@property(strong,nonatomic)UILabel *lb_style;
@property(strong,nonatomic)UILabel *lb_price;
@property(strong,nonatomic)UILabel *lb_num;
@end
