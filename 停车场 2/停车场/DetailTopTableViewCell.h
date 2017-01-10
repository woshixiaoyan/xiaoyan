//
//  DetailTopTableViewCell.h
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/6.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailTopTableViewCell : UITableViewCell
@property(strong,nonatomic)UILabel *lb_title;
@property(strong,nonatomic)UILabel *lb_price;
@property(strong,nonatomic)UILabel *lb_yjprice;
@property(strong,nonatomic)UILabel *lb_pz;
@property(strong,nonatomic)UILabel *lb_num;
@property(strong,nonatomic)UILabel *lb_xnum;
@property(strong,nonatomic)UILabel *lb_addr;
@property(strong,nonatomic)UILabel *lb_cn;
@property(strong,nonatomic)UIImageView *icon_cn;
@property(strong,nonatomic)UIButton *btn_love;
@property(strong,nonatomic)UILabel *lb_lvnum;
@end
