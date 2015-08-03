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
    
    IBOutlet UIImageView *par;
    IBOutlet UIImageView *gu;
    IBOutlet UIImageView *red;
    IBOutlet UIButton *startButton;
    
    
    
    NSTimer *tm;
    double interval;//タイマーの間隔
    int maintime;//メインタイマー
    AVAudioPlayer *audio;
    
    
}
-(IBAction)start;

@end
