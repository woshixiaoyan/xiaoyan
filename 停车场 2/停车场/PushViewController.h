//
//  PushViewController.h
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/8.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PushView.h"
#import "PushOneView.h"
#import "PushTwoView.h"
@interface PushViewController : UIViewController
@property(strong,nonatomic)UIScrollView *scrollerview;
@property(strong,nonatomic)PushView *ptop_view;
@property(strong,nonatomic)PushOneView *pone_view;
@property(strong,nonatomic)PushTwoView *ptwo_view;
@end
