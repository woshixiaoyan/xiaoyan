//
//  APVipBaseViewController.h
//  APDemo
//
//  Created by 朱小亮 on 2017/1/4.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UITableView+APCreateCell.h"
#import "APSettingItem.h"
#import "UIViewController+storyboard.h"

@interface APVipBaseViewController : UIViewController
@property (strong,nonatomic)NSMutableArray *dataSource;
@property (strong,nonatomic)UITableView *tableView;
@end
