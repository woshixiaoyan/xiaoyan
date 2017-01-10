//
//  APManagerAddressViewController.m
//  APDemo
//
//  Created by 朱小亮 on 2017/1/5.
//  Copyright © 2017年 朱小亮. All rights reserved.
//

#import "APManagerAddressViewController.h"

@interface APManagerAddressViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation APManagerAddressViewController
@dynamic tableView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.dataSource = [NSMutableArray arrayWithObjects:@1,@2,@3, nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.dataSource.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView createCellFromNibWithIdentifier:@"APAddressTableViewCell"];
    return cell;
}


@end
