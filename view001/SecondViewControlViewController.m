//
//  SecondViewControlViewController.m
//  view001
//
//  Created by 林德辉 on 13-5-8.
//  Copyright (c) 2013年 ibokan. All rights reserved.
//

#import "SecondViewControlViewController.h"

@interface SecondViewControlViewController ()

@end

@implementation SecondViewControlViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.userInteractionEnabled=NO; //关闭父类用户界面交互
    self.view.backgroundColor=[UIColor greenColor];
    UIButton *btn=[UIButton buttonWithType:1];
                   btn.frame=CGRectMake(100, 300, 100, 50);
//    btn.userInteractionEnabled=NO; //关闭用户界面交互
    [self.view addSubview:btn];
    
    
                   
                   
    UILabel *lab=[[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 50)];
    lab.text=@"hello";
   
    lab.alpha=0.5;  //取透明度0.5的标签贴在视图上
   
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:4];
     lab.alpha=0.5;//执行动画时常
    [self.view addSubview:lab];//开始执行动画
     lab.center=CGPointMake(lab.center.x, lab.center.y+100);  //从原始原点位置移
    lab.alpha=0.2;
   
    [UIView commitAnimations];
 
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
//{
//    //做方向检查 监测屏幕的朝向，调出响应的程序
//}

@end
