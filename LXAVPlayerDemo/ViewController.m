//
//  ViewController.m
//  LXAVPlayerDemo
//
//  Created by chuanglong02 on 16/11/14.
//  Copyright © 2016年 漫漫. All rights reserved.
//

#import "ViewController.h"
#import "LBPlayViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    LxButton *button =[LxButton LXButtonWithTitle:@"点我" titleFont:[UIFont systemFontOfSize:17.0] Image:nil backgroundImage:nil backgroundColor:[UIColor redColor] titleColor:[UIColor blackColor] frame:CGRectMake(0, 64, 100, 40)];
    [self.view addSubview:button];
    __weak ViewController *weakSelf = self;
    [button addClickBlock:^(UIButton *button) {
        [weakSelf presentViewController:[[LBPlayViewController alloc]init] animated:YES completion:nil];
    }];
}
- (BOOL)shouldAutorotate
{
    return YES;
}

// 支持哪些屏幕方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

// 默认的屏幕方向（当前ViewController必须是通过模态出来的UIViewController（模态带导航的无效）方式展现出来的，才会调用这个方法）
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationPortrait;
}

@end
