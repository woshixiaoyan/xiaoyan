//
//  DetailImageTableViewCell.m
//  wanxuntong
//
//  Created by xiaoyan on 2017/1/6.
//  Copyright © 2017年 xiaoyan. All rights reserved.
//

#import "DetailImageTableViewCell.h"
@interface DetailImageTableViewCell()<UIScrollViewDelegate>
@property(strong,nonatomic)UIPageControl *pageview;
@end
@implementation DetailImageTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initview];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

-(void)initview{
    self.scrollerview = [UIScrollView new];
    _scrollerview.backgroundColor = [UIColor blackColor];
    //  _scrollerview.frame = CGRectMake(0, 0, self.contentView.frame.size.width, self.contentView.frame.size.height);
    _scrollerview.showsHorizontalScrollIndicator = NO;
    _scrollerview.showsVerticalScrollIndicator = NO;
    _scrollerview.pagingEnabled = YES;
    _scrollerview.delegate = self;
    [self.contentView addSubview:_scrollerview];
    
    _scrollerview.sd_layout
    .leftSpaceToView(self.contentView,0)
    .rightSpaceToView(self.contentView,0)
    .topSpaceToView(self.contentView,0)
    .bottomSpaceToView(self.contentView,0);
    
    self.pageview = [UIPageControl new];
    _pageview.tintColor = [UIColor orangeColor];
    [self.contentView addSubview:_pageview];
    _pageview.sd_layout
    .centerXEqualToView(self.contentView)
    .bottomSpaceToView(self.contentView,5)
    .heightIs(20);
    [self setArray:[NSArray arrayWithObjects:@"1",@"2",@"3" ,nil]];
}

-(void)setArray:(NSArray *)array{
    _scrollerview.contentSize = CGSizeMake(self.contentView.frame.size.width*array.count, 0);
    _pageview.numberOfPages = array.count;
    [self addimagearray:array];
}

-(void)addimagearray:(NSArray *)image_array{
    NSLog(@"%f",self.frame.size.height);
    for (int i = 0;i < image_array.count; i ++) {
        
        UIImageView *image = [UIImageView new];
        // image.frame = CGRectMake(self.contentView.frame.size.width*i, 0, self.contentView.frame.size.width, self.contentView.frame.size.height);
        image.backgroundColor = [UIColor redColor];
        [_scrollerview addSubview:image];
        image.sd_layout
        .leftSpaceToView(_scrollerview,self.contentView.frame.size.width*i)
        .topSpaceToView(self.contentView,0)
        .bottomSpaceToView(self.contentView,0)
        .widthIs(self.scrollerview.frame.size.width);
    }
    [_scrollerview layoutSubviews];
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
