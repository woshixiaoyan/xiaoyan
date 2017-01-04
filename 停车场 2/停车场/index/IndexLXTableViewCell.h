//
//  IndexLXTableViewCell.h
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/2.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IndexLXTableViewCell : UITableViewCell
@property(copy,nonatomic)void(^btntagIndex)(NSInteger index);
@end
