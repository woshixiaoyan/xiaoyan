//
//  JZTSettingNormolTableViewCell.m
//  APDemo
//
//  Created by 朱小亮 on 2017/1/5.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import "APSettingNormolTableViewCell.h"
#import "APSettingItem.h"

@interface APSettingNormolTableViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *leftImageView;
@property (weak, nonatomic) IBOutlet UILabel *leftLabel;
@property (weak, nonatomic) IBOutlet UILabel *rightLabel;
@property (weak, nonatomic) IBOutlet UIImageView *rightImageView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftImageViewWidthConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightImageHeightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightImageWidthConstraint;


@end

@implementation APSettingNormolTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.rightImageView.hidden = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setItem:(id)item{
    if (_item == item) {
        return;
    }
    
    _item = item;
    if ([item isKindOfClass:[APSettingItem class]]) {
        APSettingItem *tempItem = (APSettingItem *)item;
        self.leftImageView.image = [UIImage imageNamed:tempItem.leftImageName];
        self.leftLabel.text = tempItem.leftTitle;
        self.rightLabel.text = tempItem.rightTitle;
        self.accessoryType = tempItem.showAccessView?UITableViewCellAccessoryDisclosureIndicator:UITableViewCellAccessoryNone;
        if (tempItem.leftImageName.length<=0) {
            self.leftImageViewWidthConstraint.constant = CGFLOAT_MIN;
        }
        if (tempItem.rightImageName.length>0&&tempItem.rightTitle.length<=0) {
            self.rightImageHeightConstraint.constant = 60;
            self.rightImageWidthConstraint.constant = 60;
            self.rightImageView.hidden = NO;
        }
    }
    
    
    
}

@end
