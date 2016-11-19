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
        [weakSelf.navigationController pushViewController:[[LBPlayViewController alloc]init] animated:YES];
    }];
}
//返回竖屏格式
- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

@end
