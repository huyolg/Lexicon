//
//  homeViewController.m
//  Lexicon
//
//  Created by 胡永亮 on 2016/11/18.
//  Copyright © 2016年 胡永亮. All rights reserved.
//

#import "homeViewController.h"
#import "UIBarButtonItem+Extend.h"
#import "PlayingViewController.h"

@interface homeViewController ()
{
    BOOL isPlaying;
}

@end

@implementation homeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    isPlaying = NO;
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithIcon:@"play" target:self action:@selector(showPlayingView)];
}

- (void)showPlayingView
{
    PlayingViewController *playingVC = [[PlayingViewController alloc]init];
    playingVC.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
//    playingVC.modalPresentationStyle = UIModalPresentationOverFullScreen;
    [self presentViewController:playingVC animated:YES completion:^{
        nil;
//        playingVC.view.backgroundColor = [UIColor orangeColor];
    }];
    if (!isPlaying) {
        self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithIcon:@"playing" target:self action:@selector(showPlayingView)];
    }else {
        self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithIcon:@"play" target:self action:@selector(showPlayingView)];
    }
    isPlaying = !isPlaying;
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
