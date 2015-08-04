//
//  RandomViewController.m
//  ozasikigame
//
//  Created by nanami on 2015/02/28.
//  Copyright (c) 2015年 nanami. All rights reserved.
//

#import "RandomViewController.h"

@interface RandomViewController ()

@end

@implementation RandomViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //------------------------ワンタップ---------------------
    
    //タップViewの生成
    tapView.backgroundColor = [UIColor clearColor];
    //タップ認識
    UITapGestureRecognizer *tapGesture =
    [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(view_Tapped:)];
    // ビューにジェスチャーを追加（タップしたか確認のビュー）
    [tapView addGestureRecognizer:tapGesture];
    
    //------------------------ワンタップ---------------------
    
    //------------------------同時タップーーーーーーーーーーーーー
    //同時タップViewの生成
    multiTapView.backgroundColor = [UIColor clearColor];
    //タップ認識
    UITapGestureRecognizer *multiTapGesture =
    [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector( multiview_Tapped:)];
    
    // 2本指
    multiTapGesture.numberOfTouchesRequired = 2;
    
    // ビューにジェスチャーを追加（同時タップしたか確認のビュー）
    [multiTapView addGestureRecognizer:multiTapGesture];
    //------------------------同時タップーーーーーーーーーーーーー
   
    
    
    par.hidden=YES;
    gu.hidden=YES;
    maintime =0;
    interval = 1.0;
    maintime = 1.0;
    NSLog(@"%d", maintime);
    //最初に設定しておく、タップされていないのでNOにする
    isTapped = NO;
    isMultiTapped = NO;

    
    //金毘羅船々の再生準備
    NSString *path = [[NSBundle mainBundle] pathForResource:@"1253" ofType:@"mp3"];
    NSURL *url = [NSURL fileURLWithPath:path];
    audio = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    
    
}


- (void) makeTimer {
    //tmを作成
    tm = [NSTimer scheduledTimerWithTimeInterval:interval
                                          target:self
                                        selector:@selector(time:)
                                        userInfo:nil
                                         repeats:YES];
    
    //tmを開始
    [tm fire];
}

//ワンタップ
- (void)view_Tapped:(UITapGestureRecognizer *)sender{
    NSLog(@"%@",sender);
    
    isTapped = YES;
     NSLog(@"ワンタップ");
    
  }

//同時タップ
- (void)multiview_Tapped:(UITapGestureRecognizer *)sender{
    NSLog(@"%@",sender);
    
    isMultiTapped = YES;
    NSLog(@"同時タップ");
}




-(IBAction)start{
    
    
    startButton.hidden=YES;
    //金毘羅船々再生
    [audio play];
    //makeタイマー開始
    [self makeTimer];
}


-(void)time:(NSTimer*)timer{
    //メインタイマーに１ずつ足していく
    maintime += 1;
    NSLog(@"time:%d", maintime);

   /* if( maintime%2==0){
            if(maintime-1){
                
                //相手がグー
                if(rnd==0){
                    tapView.hidden=YES;
                    if (isMultiTapped == NO) {
                        NSLog(@"アウト!");
                    }

                    
                    //   自分が同時タップしなかったらゲームオーバー
                 //相手がパー
                }else if(rnd==1){
                    if (isTapped == NO) {
                        NSLog(@"アウト!");
                    }// 自分がワンタップしなかったらゲームオーバー
                }
            }
     }*/

    
    
    
    //もしメインタイマーが奇数の時ランダムでグーorパー表示
    if(maintime%2==1){
        
        isTapped = NO;
       //isMultiTapped = NO;

        
        
        //乱数０か１
        rnd = arc4random_uniform(2);
        
        
        
        // NSLog(@"interval:%d", interval);
        //もしintervalが0ならグーが表示
        if (rnd==0) {
            par.hidden=YES;
            gu.hidden=NO;
            
        }else{
            //それ以外（interval=1）はパー表示
            gu.hidden=YES;
            par.hidden=NO;
        }
        //メインタイマーが偶数
    }else{
        //何も表示されない
        par.hidden=YES;
        gu.hidden=YES;
    }
    
    
    
    
 //----------------------------------------------------
    //メインタイマーが５秒になったら
    if(maintime == 5){
        NSLog(@"----ver2----");
        //タイマー停止
        [tm invalidate];
        
        //タイマーの間隔を0.8に
        interval = 0.8;
        
        //タイマーの遅延実行
        [self performSelector:@selector(makeTimer)
                   withObject:nil afterDelay:interval];
        
        //メインタイマーが10になったら
    }else if(maintime == 10){
        NSLog(@"----ver3----");
        [tm invalidate];
        //タイマーの間隔を0.6秒に
        interval = 0.6;
        //タイマーの遅延実行
        [self performSelector:@selector(makeTimer)
                   withObject:nil afterDelay:interval];
        
        //メインタイマーが15になったら
    }else if(maintime == 18){
        NSLog(@"----ver4----");
        [tm invalidate];
        //タイマーの間隔を0.6秒に
        interval = 0.4;
        //タイマーの遅延実行
        [self performSelector:@selector(makeTimer)
                   withObject:nil afterDelay:interval];
        
    }
//---------------------------------------------------------------
    
    
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end




