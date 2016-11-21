//
//  MineViewController.m
//  Lexicon
//
//  Created by 胡永亮 on 2016/11/18.
//  Copyright © 2016年 胡永亮. All rights reserved.
//

#import "MineViewController.h"
#import "Masonry.h"

@interface MineViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation MineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-45) style:UITableViewStyleGrouped];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.tableHeaderView = [self desinHeadView];
    [self.view addSubview:tableView];
}

- (UIView*)desinHeadView{
    UIView *headView = [[UIView alloc]init];
    headView.frame = CGRectMake(0, 0, self.view.frame.size.width, 150);
    //头像
    UIImageView *headIcon = [[UIImageView alloc]init];
//    headView.layer.masksToBounds = YES;
//    headView.layer.cornerRadius = 25;
    headIcon.layer.borderWidth = 1;
    [headView addSubview:headIcon];
    [headIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(headView.mas_left).offset(20);
        make.top.mas_equalTo(headView.mas_top).offset(15);
        make.height.mas_equalTo(50);
        make.width.mas_equalTo(50);
    }];
    
    //昵称
    UILabel *nameLabel = [[UILabel alloc]init];
    nameLabel.text = @"大师兄";
//    nameLabel.layer.borderWidth = 1;
    nameLabel.font = [UIFont systemFontOfSize:15];
    [headView addSubview:nameLabel];
    [nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(headIcon.mas_top).offset(5);
        make.left.mas_equalTo(headIcon.mas_right).offset(10);
        make.height.mas_equalTo(20);
        make.right.mas_equalTo(headView.mas_right).offset(-80);
    }];
    
    ///修改资料
    UIButton *changeInfor = [[UIButton alloc]init];
//    changeInfor.layer.borderWidth = 1;
    changeInfor.titleLabel.font = [UIFont systemFontOfSize:10];
    [changeInfor setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
//    changeInfor.titleLabel.textColor = [UIColor grayColor];
//    changeInfor.titleEdgeInsets = UIEdgeInsetsMake(5, 0, 5, 0);
    [changeInfor setTitleEdgeInsets:UIEdgeInsetsMake(5, 0, 5, 0)];
    [changeInfor setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
    [changeInfor setTitle:@"修改个人信息" forState:UIControlStateNormal];
    [changeInfor setImage:[UIImage imageNamed:@"change"] forState:UIControlStateNormal];
    [headView addSubview:changeInfor];
    [changeInfor mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(nameLabel.mas_bottom).offset(2);
        make.left.mas_equalTo(nameLabel.mas_left);
        make.bottom.mas_equalTo(headIcon.mas_bottom).offset(-2);
    }];
    
    UIButton *historyBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [historyBtn setImage:[UIImage imageNamed:@"history"] forState:UIControlStateNormal];
    [headView addSubview:historyBtn];
    [historyBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(headIcon.mas_bottom).offset(20);
        make.left.mas_equalTo(headView).offset(20);
        
    }];
    
    UIButton *collectBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [historyBtn setImage:[UIImage imageNamed:@"history"] forState:UIControlStateNormal];
    [headView addSubview:collectBtn];
    [collectBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(historyBtn.mas_top);
        make.left.mas_equalTo(historyBtn.mas_right);
    }];
    return headView;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    return cell;
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
