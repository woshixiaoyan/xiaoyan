//
//  APLoginBaseViewController.h
//  APDemo
//
//  Created by 朱小亮 on 2017/1/3.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UITableView+APCreateCell.h"
#import "APNormolTableViewCell.h"
#import "APNormolCellItem.h"
#import "APLoginAddressItem.h"
#import "UIViewController+storyboard.h"

@interface APLoginBaseViewController : UIViewController
@property (strong,nonatomic) NSArray *cellClasses;
@property (strong,nonatomic) NSArray *section0Datas;
@property (strong,nonatomic) NSArray *section1Datas;
@property (strong, nonatomic) UITableView *tableView;
@end
