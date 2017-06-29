//
//  WelcomeViewController.m
//  LoveTime
//
//  Created by 尤艺琪同学 on 16/10/5.
//  Copyright © 2016年 尤艺琪同学. All rights reserved.
//

#import "WelcomeViewController.h"
#import "RegViewController.h"

@interface WelcomeViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scv;

@end

@implementation WelcomeViewController
{
    NSArray *listArr;
    NSArray *listArr1;
    UIView *pageView;
    UIImageView *logoImv;
}
-(NSArray *)listArr
{
    if(!listArr)
    {
        listArr=@[[UIImage imageNamed:@"welcome_1"],
                  [UIImage imageNamed:@"welcome_2"],
                  [UIImage imageNamed:@"welcome_3_1"]];
    }
    return listArr;
}
-(NSArray *)listArr1
{
    if(!listArr1)
    {
        listArr1=@[[UIImage imageNamed:@"welcome1"],
                  [UIImage imageNamed:@"welcome2"],
                  [UIImage imageNamed:@"welcome3"]];
    }
    return listArr1;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self listArr];
    [self listArr1];
    
//    _scv.contentSize=CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height*[listArr count]);
//    _scv.bounces=NO;
//    _scv.pagingEnabled=YES;
//    _scv.showsHorizontalScrollIndicator=NO;
//    _scv.showsVerticalScrollIndicator=NO;
//    
//    for (int i=0; i<[listArr1 count]; i++) {
//        UIImageView *imv=[[UIImageView alloc]initWithFrame:CGRectMake(0,self.view.bounds.size.height*i, self.view.bounds.size.width, self.view.bounds.size.height)];
//        imv.image=listArr1[i];
//        [_scv addSubview:imv];
//        imv.userInteractionEnabled=YES;
//        if(i==([listArr count]-1))
//        {
//            UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(Tap:)];
//            [imv addGestureRecognizer:tap];
//        }
//    }
    
    [self setupUI];
}
-(void)Tap:(UITapGestureRecognizer *)sender
{
    NSLog(@"asdsfd");
}
/*方法一*/
-(void)setupUI
{
    _scv.contentSize=CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height*[listArr count]);
    _scv.bounces=NO;
    _scv.pagingEnabled=YES;
    _scv.showsHorizontalScrollIndicator=NO;
    _scv.showsVerticalScrollIndicator=NO;
    _scv.layer.contents = (id)[UIImage imageNamed:@"welcome_bg"].CGImage;
    logoImv=[[UIImageView alloc]initWithFrame:CGRectMake(5, self.view.bounds.size.height-self.view.bounds.size.width/48*16-10, self.view.bounds.size.width/48, self.view.bounds.size.width/48*16)];
    logoImv.image=[UIImage imageNamed:@"welcome_txt"];
    [self.view addSubview:logoImv];
    
    for (int i=0; i<[listArr count]; i++) {
        UIImageView *imv=[[UIImageView alloc]initWithFrame:CGRectMake(0,self.view.bounds.size.height*i, self.view.bounds.size.width, self.view.bounds.size.height)];
        imv.image=listArr[i];
        [_scv addSubview:imv];
        if(i==([listArr count]-1))
        {
            imv.userInteractionEnabled=YES;
            UIButton *joinBtn =[[UIButton alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/5, self.view.bounds.size.height*0.57, self.view.bounds.size.width/5*3, self.view.bounds.size.width/5*3/4.2)];
            [joinBtn setImage:[UIImage imageNamed:@"welcome_3_2"] forState:UIControlStateNormal];
            [imv addSubview:joinBtn];
            [joinBtn addTarget:self action:@selector(JoinClick) forControlEvents:UIControlEventTouchUpInside];
        }
        
//        UIView *v=[[UIView alloc]initWithFrame:CGRectMake(self.view.bounds.size.width-10-logoImv.frame.size.width*2, self.view.bounds.size.height-logoImv.frame.size.width*2*(i+1)-10*(i+1), logoImv.frame.size.width*2, logoImv.frame.size.width*2)];
//        [self.view addSubview:v];
//        v.layer.cornerRadius=v.frame.size.width/4;
//        v.backgroundColor=[UIColor whiteColor];
    }
//    pageView=[[UIView alloc]initWithFrame:CGRectMake(self.view.bounds.size.width-10-logoImv.frame.size.width*2, self.view.bounds.size.height-logoImv.frame.size.width*2*[listArr count]-10*[listArr count], logoImv.frame.size.width*2, logoImv.frame.size.width*2)];
//    [self.view addSubview:pageView];
//    pageView.layer.cornerRadius=pageView.frame.size.width/4;
//    pageView.backgroundColor=[UIColor redColor];
//    pageView.layer.borderWidth=0.8;
//    pageView.layer.borderColor=[UIColor blackColor].CGColor;
}
//-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
//{
//    //获取UIScrollerView的高度
//    CGFloat pageHeight=CGRectGetHeight(_scv.frame);
//    NSUInteger page=floor((_scv.contentOffset.y-pageHeight/2)/pageHeight)+1;
//    NSLog(@"%lu",(unsigned long)page);
//    pageView.frame=CGRectMake(self.view.bounds.size.width-10-logoImv.bounds.size.width*2, self.view.bounds.size.height-logoImv.bounds.size.width*2*([listArr count]-page)-10*([listArr count]-page), logoImv.bounds.size.width*2, logoImv.bounds.size.width*2);
//}
-(void)JoinClick
{
    
  RegViewController *regViewcontroller=[[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"ViewController"];
    [self presentViewController:regViewcontroller animated:YES completion:^{
    
    }];
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
