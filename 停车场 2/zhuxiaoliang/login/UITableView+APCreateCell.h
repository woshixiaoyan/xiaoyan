//
//  UIViewController+APCreateCell.h
//  APDemo
//
//  Created by 朱小亮 on 2017/1/3.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (APCreateCell)
- (UITableViewCell *)createCellFromNibWithIdentifier:(NSString *)identifier;

@end
