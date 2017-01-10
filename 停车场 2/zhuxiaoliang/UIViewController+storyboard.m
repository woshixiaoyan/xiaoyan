//
//  UIViewController+storyboard.m
//  APDemo
//
//  Created by 朱小亮 on 2017/1/5.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import "UIViewController+storyboard.h"

@implementation UIViewController (storyboard)

+ (instancetype)viewControllerWithStoryBoardName:(NSString *)storyBoardName
                                    vcIdentifier:(NSString *)identifier{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyBoardName bundle:nil];
    UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:identifier];
    return vc;
}
@end
