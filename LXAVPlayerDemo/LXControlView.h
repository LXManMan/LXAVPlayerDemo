//
//  LXControlView.h
//  LXAVPlayerDemo
//
//  Created by chuanglong02 on 16/11/14.
//  Copyright © 2016年 漫漫. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LXPlayerModel.h"
@protocol LXControlViewDelegate<NSObject>
-(void)dismissVC;
-(void)playEnd;
@end

@interface LXControlView : UIView
-(instancetype)initWithFrame:(CGRect)frame videoModelArray:(NSArray *)videoModelArray;
@property(nonatomic,assign)id<LXControlViewDelegate>delegate;
@end
