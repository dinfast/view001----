//
//  FourViewController.m
//  view001
//
//  Created by 林德辉 on 13-5-8.
//  Copyright (c) 2013年 ibokan. All rights reserved.
//

#import "FourViewController.h"

@interface FourViewController ()

@end

@implementation FourViewController

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
    //设置万花桶
    NSArray *ColorArray=[NSArray arrayWithObjects:[UIColor greenColor],[UIColor blueColor],[UIColor yellowColor],[UIColor grayColor],[UIColor redColor],[UIColor redColor],[UIColor orangeColor],nil];
    UIView*outview=[[UIView alloc]initWithFrame:CGRectMake(10, 10 , 300, 330)] ; //
    outview.tag=100;
    outview.backgroundColor=[UIColor blueColor];
     [self.view addSubview:outview];
               
        for(int i=1;i<7;i++)
        {
        UIView*view2=[[UIView alloc]init];
        view2.frame=CGRectInset(outview.frame, 20*i, 20*i);   //设置i个与原始图像向内相差20的视图
        view2.backgroundColor=[ColorArray objectAtIndex:i];
        view2.tag=100+i;
        [self.view addSubview:view2];
                    
                    }
  [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(changcolor:) userInfo:nil repeats:YES];  //每过1秒通过调用changcolor:这个方法执行一次
    
   
}
-(void)changcolor:(id)sender

{
    NSLog(@"zhixingle");
   UIView *v6=[self.view viewWithTag:106];    //取到小名为106的
    UIColor*c6=v6.backgroundColor;
    for(int i=6;i>0;i--)
    {
        UIView*v1=[self.view viewWithTag:100+i];   
//        v1.backgroundColor=[[self.view.viewWithTag:100+i-1].backgroundColor ];
       
        v1.backgroundColor=[[self.view viewWithTag:100+i-1]backgroundColor];
    }
    UIView *v0=[self.view viewWithTag:100];      
    v0.backgroundColor=c6;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
