//
//  GameoverViewController.m
//  ozasikigame
//
//  Created by nanami on 2014/12/24.
//  Copyright (c) 2014年 nanami. All rights reserved.
//

#import "GameoverViewController.h"
#import "HomeViewController.h"

@interface GameoverViewController ()

@end

@implementation GameoverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//画面遷移
- (IBAction)backBtn:(UIButton *)sender {
    HomeViewController *homeVC =  [self.storyboard instantiateViewControllerWithIdentifier:@"HomeViewController"];
    
    //mainVC.secondNum = self.firstNum;
    [self presentViewController:homeVC animated:YES completion:nil];//YESならModal,Noなら何もなし
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
