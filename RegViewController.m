//
//  RegViewController.m
//  LoveTime
//
//  Created by 尤艺琪同学 on 16/10/6.
//  Copyright © 2016年 尤艺琪同学. All rights reserved.
//

#import "RegViewController.h"

@interface RegViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *monthImv1;
@property (weak, nonatomic) IBOutlet UILabel *summaryLbl1;
@property (weak, nonatomic) IBOutlet UIImageView *backBtn;

@end

@implementation RegViewController
{
    NSString *summary;
    UIImage *monthImg;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    _backBtn.userInteractionEnabled=YES;
    NSCalendar *gregorian=[[NSCalendar alloc]initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDate *date=[NSDate date];
    unsigned unitFlags=NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay;
    NSDateComponents *comp=[gregorian components:unitFlags fromDate:date];
    switch (comp.month) {
        case 1:
            summary=@"别让寒冷的气候影响你和Ta情感交流的速度。";
            monthImg=[UIImage imageNamed:@"m1"];
            break;
        case 2:
            summary=@"Hey~今年的2月14怎么过？";
            monthImg=[UIImage imageNamed:@"m2"];
            break;
        case 3:
            summary=@"倒春寒，要注意身体";
            monthImg=[UIImage imageNamed:@"m3"];
            break;
        case 4:
            summary=@"春暖花开，别忘了在时光轴传几张图片哦！";
            monthImg=[UIImage imageNamed:@"m4"];
            break;
        case 5:
            summary=@"一年中最美好的月份和季节。";
            monthImg=[UIImage imageNamed:@"m5"];
            break;
        case 6:
            summary=@"天气渐渐炎热，喝杯茶，写点文字。";
            monthImg=[UIImage imageNamed:@"m6"];
            break;
        case 7:
            summary=@"记录些情感上的美好，赶走难耐的酷暑。";
            monthImg=[UIImage imageNamed:@"m7"];
            break;
        case 8:
            summary=@"这个夏天注定有让你想记录的美好存在。";
            monthImg=[UIImage imageNamed:@"m8"];
            break;
        case 9:
            summary=@"虽然9月份了，但是要去西藏还来得及！";
            monthImg=[UIImage imageNamed:@"m9"];
            break;
        case 10:
            summary=@"天气有些凉意，记得添件单衣。";
            monthImg=[UIImage imageNamed:@"m10"];
            break;
        case 11:
            summary=@"悲秋虽然听起来文艺，但是不要有。";
            monthImg=[UIImage imageNamed:@"m11"];
            break;
        case 12:
            summary=@"浪漫往往发生在寒冷的冬季。";
            monthImg=[UIImage imageNamed:@"m12"];
            break;
        default:
            break;
    }
    
    _summaryLbl1.text=summary;
    _monthImv1.image=monthImg;

}
- (IBAction)backClick:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
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
