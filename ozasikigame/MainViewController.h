//
//  ViewController.h
//  ozasikigame
//
//  Created by nanami on 2014/11/29.
//  Copyright (c) 2014年 nanami. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface MainViewController : UIViewController
{
    //相手の手
    IBOutlet UIImageView *par;
    IBOutlet UIImageView *gu;
    IBOutlet UIImageView *red;
    
    //自分の手
    IBOutlet UIImageView*mypar;
    
    //ボタン
    IBOutlet UIButton *startButton;
    IBOutlet UIButton *multiTapButton;
    
    //ラベル
    IBOutlet UILabel * countLabel;//時間
    IBOutlet UILabel * tapLabel;//点数

    IBOutlet UIView *tapView;
    
    //点数
    int number;
    
    NSTimer *timer;
    int timeCount;//メインタイマー
    int doubleTap;//ダブルタップ
    int guCount;
    
    //int tapCount;  いらん
    
    BOOL isTapped;
    BOOL isMultiTapped;
    
    AVAudioPlayer *audio;
    
}

@property float level;

-(IBAction)start;

@end

