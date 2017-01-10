//
//  APNormolCellItem.m
//  APDemo
//
//  Created by 朱小亮 on 2017/1/3.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import "APNormolCellItem.h"

@implementation APNormolCellItem
+ (id)itemWithImageName:(NSString *)imageName
            placeHolder:(NSString *)placeHolder
                   text:(NSString *)text
           btnImageName:(NSString *)btnImageName
               btnTitle:(NSString *)btnTitle{
    APNormolCellItem *item = [APNormolCellItem new];
    item.imageName = imageName;
    item.placeHolder = placeHolder;
    item.text = text;
    item.btnImageName = btnImageName;
    item.btnTitle = btnTitle;
    return item;
}
@end
