//
//  APSegumentViewController.m
//  APDemo
//
//  Created by 朱小亮 on 2017/1/6.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import "APSegumentViewController.h"


@interface APSegumentViewController ()<ZJScrollPageViewDelegate>
@end

@implementation APSegumentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
}

- (void)setTitles:(NSArray<NSString *> *)titles{
    if (!_titles ) {
        _titles = titles;
    }
    ZJSegmentStyle *style = [[ZJSegmentStyle alloc] init];
    //显示滚动条
    style.showLine = YES;
    // 颜色渐变
    style.gradualChangeTitleColor = YES;
    
    ZJScrollPageView *scrollPageView = [[ZJScrollPageView alloc] initWithFrame:CGRectMake(0, 64.0, self.view.bounds.size.width, self.view.bounds.size.height - 64.0) segmentStyle:style titles:titles parentViewController:self delegate:self];
    
    [self.view addSubview:scrollPageView];
}

- (NSInteger)numberOfChildViewControllers {
    return self.titles.count;
}


- (UIViewController<ZJScrollPageViewChildVcDelegate> *)childViewController:(UIViewController<ZJScrollPageViewChildVcDelegate> *)reuseViewController forIndex:(NSInteger)index {
    UIViewController<ZJScrollPageViewChildVcDelegate> *childVc = reuseViewController;
    
    if (!childVc) {
        childVc = (UIViewController<ZJScrollPageViewChildVcDelegate> *)[UIViewController viewControllerWithStoryBoardName:@"vip" vcIdentifier:@"APMyOrderViewController"];
    }
    
    
    if (index%2==0) {
        childVc.view.backgroundColor = [UIColor blueColor];
    } else {
        childVc.view.backgroundColor = [UIColor greenColor];
        
    }
    
    NSLog(@"%ld-----%@",(long)index, childVc);
    
    return childVc;
}


@end
