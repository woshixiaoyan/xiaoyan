//
//  APSegumentControl.m
//  APDemo
//
//  Created by 朱小亮 on 2017/1/5.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import "APSegumentControl.h"

@implementation APSegumentControl

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.layer.cornerRadius = 5;
    self.layer.masksToBounds = YES;
    self.layer.borderColor = [UIColor redColor].CGColor;
    self.layer.borderWidth = 1;
    self.backgroundColor = [UIColor whiteColor];
    self.tintColor = [UIColor redColor];
    
}

@end
