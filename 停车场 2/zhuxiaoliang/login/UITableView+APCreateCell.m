//
//  UIViewController+APCreateCell.m
//  APDemo
//
//  Created by 朱小亮 on 2017/1/3.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import "UITableView+APCreateCell.h"

@implementation UITableView (APCreateCell)
- (UITableViewCell *)createCellFromNibWithIdentifier:(NSString *)identifier{
    UITableViewCell *cell = [self dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        UINib *nib = [UINib nibWithNibName:identifier bundle:nil];
        [self registerNib:nib forCellReuseIdentifier:identifier];
        cell = [self dequeueReusableCellWithIdentifier:identifier];
    }
    return cell;
}
@end
