//
//  ShopListCollectionViewCell.h
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/5.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShopListCollectionViewCell : UICollectionViewCell
@property(strong,nonatomic)UIImageView *image;
@property(strong,nonatomic)UILabel *lb_title;
@property(strong,nonatomic)UILabel *lb_price;
@property(strong,nonatomic)UIButton *btn_sc;
@property(strong,nonatomic)UILabel *lb_scnum;
@property(strong,nonatomic)UIView *bg;
@end
