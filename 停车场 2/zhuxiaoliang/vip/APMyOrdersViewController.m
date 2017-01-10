//
//  APMyOrdersViewController.m
//  APDemo
//
//  Created by 朱小亮 on 2017/1/6.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import "APMyOrdersViewController.h"


@interface APMyOrdersViewController ()
@end

@implementation APMyOrdersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([self.mark isEqualToString:@"我的订单"]) {
        self.title = @"我的订单";
        self.titles = @[@"全部",
                        @"待付款",
                        @"待发货",
                        @"待收货",
                        @"待评价",
                        ];
    }
    
    if ([self.mark isEqualToString:@"我的货架"]) {
        self.title = @"我的货架";
        self.titles = @[@"全部",
                        @"上架中",
                        @"下架中",
                        ];
    }
    
    if ([self.mark isEqualToString:@"交易中"]) {
        self.title = @"交易中";
        self.titles = @[@"全部",
                        @"待付款",
                        @"待发货",
                        @"待评价",
                        @"换退货",
                        ];
    }

    
 
}



- (UIViewController<ZJScrollPageViewChildVcDelegate> *)childViewController:(UIViewController<ZJScrollPageViewChildVcDelegate> *)reuseViewController forIndex:(NSInteger)index {
    UIViewController<ZJScrollPageViewChildVcDelegate> *childVc = reuseViewController;
    
    if (!childVc) {
        childVc = (UIViewController<ZJScrollPageViewChildVcDelegate> *)[UIViewController viewControllerWithStoryBoardName:@"vip" vcIdentifier:@"APMyOrderViewController"];
    }
    
    
    if (index%2==0) {
        childVc.view.backgroundColor = [UIColor blueColor];
    } else {
        childVc.view.backgroundColor = [UIColor greenColor];
        
    }
    
    NSLog(@"%ld-----%@",(long)index, childVc);
    
    return childVc;
}

@end
