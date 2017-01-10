//
//  APSettingItem.h
//  APDemo
//
//  Created by 朱小亮 on 2017/1/5.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APSettingItem : NSObject
@property (copy,nonatomic)NSString *leftImageName;
@property (copy,nonatomic)NSString *leftTitle;
@property (copy,nonatomic)NSString *rightImageName;
@property (copy,nonatomic)NSString *rightTitle;
@property (assign,nonatomic)BOOL showAccessView;

+ (id)settingItemWithLeftImage:(NSString *)leftImageName
                     leftTitle:(NSString *)leftTitle
                rightImageName:(NSString *)rightImageName
                    rightTitle:(NSString *)rightTitle
                showAccessView:(BOOL)showAccessView;
@end
