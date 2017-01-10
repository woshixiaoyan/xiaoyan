//
//  APSegumentViewController.h
//  APDemo
//
//  Created by 朱小亮 on 2017/1/6.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import "APVipBaseViewController.h"
#import "ZJSegmentStyle.h"
#import "ZJScrollPageView.h"
#import "APMyOrderViewController.h"


#warning **************** 我的订单  我的货架 交易中 都用这个父类
@interface APSegumentViewController : APVipBaseViewController
@property(strong, nonatomic)NSArray<NSString *> *titles;
@property (copy,nonatomic)NSString *mark;
@end
