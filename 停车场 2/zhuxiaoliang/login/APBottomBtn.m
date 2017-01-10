//
//  APBottomBtn.m
//  APDemo
//
//  Created by 朱小亮 on 2017/1/4.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import "APBottomBtn.h"


@implementation APBottomBtn

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.layer.cornerRadius = 5;
    self.layer.masksToBounds = YES;
    self.backgroundColor = [UIColor colorWithHexString:@"FB582f"];
    
}

@end
