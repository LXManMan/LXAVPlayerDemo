
//
//  LBPlayViewController.m
//  LXAVPlayerDemo
//
//  Created by chuanglong02 on 16/11/14.
//  Copyright © 2016年 漫漫. All rights reserved.
//

#import "LBPlayViewController.h"
#import "LXControlView.h"

@interface LBPlayViewController ()<LXControlViewDelegate>
@property(nonatomic,strong)LXControlView *contolView;
@end
static NSString *string = @"http://wvideo.spriteapp.cn/video/2016/0328/56f8ec01d9bfe_wpd.mp4";
//@"http://baobab.cdn.wandoujia.com/14464539635131446103741576t_x264.mp4"
@implementation LBPlayViewController
-(void)dealloc
{
    NSLog(@"%@",self.class);
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.navigationController setNavigationBarHidden:YES];
    NSMutableArray *array =[NSMutableArray array];
    LXPlayerModel *model =[[LXPlayerModel alloc]init];
    model.videotitle = @"啦啦啦";
    model.videoURL = @"http://wvideo.spriteapp.cn/video/2016/0328/56f8ec01d9bfe_wpd.mp4";
    [array addObject:model];
    
    LXPlayerModel *modelOne =[[LXPlayerModel alloc]init];
    modelOne.videotitle = @"哈哈哈";
    modelOne.videoURL = @"http://baobab.cdn.wandoujia.com/14464539635131446103741576t_x264.mp4";
    [array addObject:modelOne];
    self.contolView =[[LXControlView alloc]initWithFrame:CGRectMake(0, 0, Device_Width, Device_Width *9/16) videoModelArray:array];
    self.contolView.delegate = self;
    [self.view addSubview:self.contolView];
    self.view.backgroundColor =[UIColor whiteColor];
    
    
    
}
-(BOOL)prefersStatusBarHidden
{
    return YES;
}
-(void)dismissVC
{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)playEnd
{
    
}
// 只支持两个方向旋转
- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait ;
}
-(BOOL)shouldAutorotate
{
    return YES;
}

@end
