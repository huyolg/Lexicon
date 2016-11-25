//
//  PlayingViewController.m
//  Lexicon
//
//  Created by 胡永亮 on 2016/11/25.
//  Copyright © 2016年 胡永亮. All rights reserved.
//

#import "PlayingViewController.h"

@interface PlayingViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation PlayingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
    tableView.tableHeaderView = [self heardView];
    
//
//    UIImageView *backImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"playingBackIcon"]];
//    backImage.frame = CGRectMake(0, 0, self.view.frame.size.width, (self.view.frame.size.height*1.7)/3);
//    [self.view addSubview:backImage];
//    
//    [self.view bringSubviewToFront:btn];
}

- (UIView*)heardView{
    UIImageView *backImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, (self.view.frame.size.height*1.5)/3)];
    backImage.image = [UIImage imageNamed:@"playingBackIcon"];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(15, 25, 25, 25);
    [btn setBackgroundImage:[UIImage imageNamed:@"down"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(dissmis) forControlEvents:UIControlEventTouchUpInside];
    [backImage addSubview:btn];
    
    

    
    return backImage;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 1;
    }
    return 3;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *strCell = @"tableView";
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:strCell];
    
    return cell;
}


- (void)dissmis
{
    [self dismissViewControllerAnimated:YES completion:^{
        nil;
    }];
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
