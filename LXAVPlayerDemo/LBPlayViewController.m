
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

@implementation LBPlayViewController
-(void)dealloc
{
    NSLog(@"%@",self.class);
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.contolView =[[LXControlView alloc]initWithFrame:CGRectMake(0, 0, Device_Height, Device_Width) videoUrl:@"http://baobab.cdn.wandoujia.com/14464539635131446103741576t_x264.mp4" title:@"啦啦啦"];
    self.contolView.delegate = self;
    [self.view addSubview:self.contolView];
    
}
-(void)dismissVC
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)playEnd
{
    
}
// 是否支持自动转屏
- (BOOL)shouldAutorotate
{
    return YES;
}

// 支持哪些屏幕方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscape;
}

// 默认的屏幕方向（当前ViewController必须是通过模态出来的UIViewController（模态带导航的无效）方式展现出来的，才会调用这个方法）
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationLandscapeLeft;
}

@end
