//
//  APNormolTableViewCell.m
//  APDemo
//
//  Created by 朱小亮 on 2017/1/3.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import "APNormolTableViewCell.h"
@interface APNormolTableViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *apImageView;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *btn;
@end
@implementation APNormolTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.btn.imageView.contentMode = UIViewContentModeScaleAspectFit;
    self.btn.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, -50);
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setItem:(APNormolCellItem *)item{
    
    _item = item;
    
    self.btn.hidden = NO;
    
    self.apImageView.image = [UIImage imageNamed:item.imageName];
    
    if (item.text.length>0) {
        self.textField.text = item.text;
    }
    else{
        self.textField.placeholder = item.placeHolder;
    }
    
    if (item.btnImageName.length>0) {
        [self.btn setImage:[UIImage imageNamed:item.btnImageName] forState:UIControlStateNormal];
    }
    else{
        if(item.btnTitle.length>0){
            [self.btn setTitle:item.btnTitle forState:UIControlStateNormal];
            [self.btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            [self.btn setBackgroundColor:[UIColor blueColor]];
            self.btn.layer.cornerRadius = 3;
            self.btn.layer.masksToBounds = YES;
        }
        else{
            self.btn.hidden = YES;
        }
    }
    
}

@end
