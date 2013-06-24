//
//  ThirdViewController.m
//  view001
//
//  Created by 林德辉 on 13-5-8.
//  Copyright (c) 2013年 ibokan. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

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
    UIView *view1=[[UIView alloc]initWithFrame:CGRectMake(10, 10, 300, 300)];
    view1.backgroundColor=[UIColor redColor];
    view1.tag=1001;   //为view1取小名
    UIView *view2=[[UIView alloc]initWithFrame:CGRectMake(10, 10, 280, 280)];
    view2.backgroundColor=[UIColor greenColor];
     view2.tag=1002;
    UIView*view3=[[UIView alloc]initWithFrame:CGRectMake(20, 20, 260, 260)];
      view3.backgroundColor=[UIColor blueColor];
    [self.view addSubview:view1];      //把第一个视图贴再父视图上
    [view1 addSubview:view2];     //把第二个视图贴在第一个
    [view1 addSubview:view3];      //把第三个视图贴在第一个
    
    //让子视图岁父类视图一起缩放按宽高比例
    view2.autoresizingMask=   UIViewAutoresizingFlexibleWidth|  UIViewAutoresizingFlexibleHeight ;//宽高随着view2一起变
    view3.autoresizingMask=   UIViewAutoresizingFlexibleWidth|  UIViewAutoresizingFlexibleHeight;
    
    UIButton *bu1=[UIButton buttonWithType:1];
    bu1.frame=CGRectMake(100, 350, 100, 50);
    [bu1 setTitle:@"缩小" forState: UIControlStateNormal] ;  //设置按键的文件名为缩小，再正常状态
    [bu1 addTarget:self action:@selector(suoxiao:) forControlEvents: UIControlEventTouchUpInside ];
    [self.view addSubview:bu1];//当点击鼠标是调用方法suoxiao:
    
    UIButton *bu2=[UIButton buttonWithType:1];
    bu2.frame=CGRectMake(200, 350, 100, 50);
    [bu2 setTitle:@"放大" forState: UIControlStateNormal] ;  //设置按键的文件名为缩小，再正常状态
    [bu2 addTarget:self action:@selector(fangda:) forControlEvents: UIControlEventTouchUpInside ];
    [self.view addSubview:bu2];//当点击鼠标是调用方法suoxiao:

    

    
    
}
//修改view1视图大小
-(void)suoxiao:(id)sender
{
    UIView*v1=[self.view viewWithTag:1001];
    CGRect org=v1.frame;
    //指定缩小的范围原点横纵坐标及缩小的宽高
    org=CGRectMake(org.origin.x+10, org.origin.y+10, org.size.width-20, org.size.height-20);
    v1.frame=org;    
    
}
-(void)fangda:(id)sender
{
    UIView*v2=[self.view viewWithTag:1001];
    CGRect org=v2.frame;
    //指定缩小的范围原点横纵坐标及缩小的宽高
    org=CGRectMake(org.origin.x-10, org.origin.y-10, org.size.width+20, org.size.height+20);
    v2.frame=org;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
