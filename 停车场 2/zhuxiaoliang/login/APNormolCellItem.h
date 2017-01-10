//
//  APNormolCellItem.h
//  APDemo
//
//  Created by 朱小亮 on 2017/1/3.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APNormolCellItem : NSObject
@property (copy,nonatomic) NSString *imageName;
@property (copy,nonatomic) NSString *placeHolder;
@property (copy,nonatomic) NSString *text;
@property (copy,nonatomic) NSString *btnImageName;
@property (copy,nonatomic) NSString *btnTitle;

+ (id)itemWithImageName:(NSString *)imageName
            placeHolder:(NSString *)placeHolder
                   text:(NSString *)text
           btnImageName:(NSString *)btnImageName
               btnTitle:(NSString *)btnTitle;

@end
