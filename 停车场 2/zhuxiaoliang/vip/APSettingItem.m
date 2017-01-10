//
//  APSettingItem.m
//  APDemo
//
//  Created by 朱小亮 on 2017/1/5.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import "APSettingItem.h"

@implementation APSettingItem
+ (id)settingItemWithLeftImage:(NSString *)leftimageName
                     leftTitle:(NSString *)leftTitle
                rightImageName:(NSString *)rightImageName
                    rightTitle:(NSString *)rightTitle
                showAccessView:(BOOL)showAccessView{
    APSettingItem *item = [[APSettingItem alloc] init];
    item.leftImageName = leftimageName;
    item.leftTitle = leftTitle;
    item.rightImageName = rightImageName;
    item.rightTitle = rightTitle;
    item.showAccessView = showAccessView;
    return item;
}
@end
