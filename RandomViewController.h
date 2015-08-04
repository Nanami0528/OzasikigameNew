//
//  RandomViewController.h
//  ozasikigame
//
//  Created by nanami on 2015/02/28.
//  Copyright (c) 2015年 nanami. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface RandomViewController : UIViewController

{
    //画像
    IBOutlet UIImageView *par;
    IBOutlet UIImageView *gu;
    IBOutlet UIImageView *red;
    //ボタン
    IBOutlet UIButton *startButton;
    IBOutlet UIView *tapView;
    IBOutlet UIView *multiTapView;
    BOOL isTapped;
    BOOL isMultiTapped;

    
    
    
    NSTimer *tm;
    double interval;//タイマーの間隔
    int maintime;//メインタイマー
    int rnd;//乱数
    
    AVAudioPlayer *audio;
    
    
}
-(IBAction)start;

@end
