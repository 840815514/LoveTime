//
//  AppDelegate.m
//  LoveTime
//
//  Created by 尤艺琪同学 on 16/10/5.
//  Copyright © 2016年 尤艺琪同学. All rights reserved.
//
/*
#import "AppDelegate.h"

@interface AppDelegate ()
@property(strong,nonatomic)UIImageView *splashView;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
        if([[NSUserDefaults standardUserDefaults] boolForKey:@"isFirstOpen"]==false)
        {
            //打开启动引导
            self.window.rootViewController=[[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"WelcomeViewController"];
            [[NSUserDefaults standardUserDefaults] setBool:true forKey:@"isFirstOpen"];
            //同步
            [[NSUserDefaults standardUserDefaults]synchronize];
        }
        else
        {
            self.window.rootViewController=[[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"ViewController"];
        }

    [self.window makeKeyAndVisible];
    _splashView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0,self.window.frame.size.width, self.window.frame.size.height)];
    [_splashView setImage:[UIImage imageNamed:@"Loading"]];
    [self.window addSubview:_splashView];
    [self.window bringSubviewToFront:_splashView];
    _splashView.alpha=0.99;
    [self performSelector:@selector(scale) withObject:nil afterDelay:0.0f];
  

    return YES;
}
-(void)scale
{

    [UIView animateWithDuration:1.0f delay:0.0f options:UIViewAnimationOptionTransitionNone animations:^{
         _splashView.image=[UIImage imageNamed:@"Loading1"];
        _splashView.alpha = 1;
    } completion:^(BOOL finished) {
            [_splashView removeFromSuperview];
        }];

}
 */
#import "AppDelegate.h"

@interface AppDelegate ()
@property(strong,nonatomic)UIImageView *splashView;

@end

@implementation AppDelegate
{
    UILabel *people;
    UILabel *people1;
    UILabel *scene;
    UILabel *scene1;
    
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    if([[NSUserDefaults standardUserDefaults] boolForKey:@"isFirstOpen"]==false)
    {
        //打开启动引导
        self.window.rootViewController=[[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"WelcomeViewController"];
        [[NSUserDefaults standardUserDefaults] setBool:true forKey:@"isFirstOpen"];
        //同步
        [[NSUserDefaults standardUserDefaults]synchronize];
    }
    else
    {
        self.window.rootViewController=[[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"ViewController"];
    }
    
    [self.window makeKeyAndVisible];
    _splashView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0,self.window.frame.size.width, self.window.frame.size.height)];
    [_splashView setImage:[UIImage imageNamed:@"无字"]];
    [self.window addSubview:_splashView];
    [self.window bringSubviewToFront:_splashView];
    _splashView.alpha=0.99;
   
    /*计算宽度*/
    /*位的宽高*/
     CGSize peopleSize = [@"位" sizeWithFont:[UIFont systemFontOfSize:38] constrainedToSize:CGSizeMake(MAXFLOAT, 50)];
   
    CGSize peopleSize1 = [@"童鞋" sizeWithFont:[UIFont systemFontOfSize:24] constrainedToSize:CGSizeMake(MAXFLOAT, 50)];
    CGSize sceneSize = [@"个" sizeWithFont:[UIFont systemFontOfSize:45] constrainedToSize:CGSizeMake(MAXFLOAT, 50)];
    CGSize sceneSize1 = [@"不同的地点" sizeWithFont:[UIFont systemFontOfSize:24] constrainedToSize:CGSizeMake(MAXFLOAT, 50)];
    
    
    
    people=[[UILabel alloc]initWithFrame:CGRectMake( (self.window.bounds.size.width-(peopleSize.width+peopleSize1.width))/2, self.window.bounds.size.height/40*7,peopleSize.width,peopleSize.height)];
    people.font=[UIFont systemFontOfSize:38];
    people.textColor=[UIColor colorWithRed:0.86 green:0.86 blue:0.86 alpha:1];
    people.text=@"位";
    people.textAlignment=NSTextAlignmentRight;
    [_splashView addSubview:people];
    people1=[[UILabel alloc]initWithFrame:CGRectMake( (self.window.bounds.size.width-(peopleSize.width+peopleSize1.width))/2+peopleSize.width, self.window.bounds.size.height/40*7+peopleSize.height-peopleSize1.height-3,peopleSize1.width,peopleSize1.height)];
    people1.font=[UIFont systemFontOfSize:24];
    people1.textColor=[UIColor colorWithRed:0.86 green:0.86 blue:0.86 alpha:1];
    people1.text=@"童鞋";
    people1.textAlignment=NSTextAlignmentLeft;
    [_splashView addSubview:people1];
    scene=[[UILabel alloc]initWithFrame:CGRectMake( (self.window.bounds.size.width-(sceneSize.width+sceneSize1.width))/2, self.window.bounds.size.height/3,sceneSize.width, sceneSize.height)];
    scene.font=[UIFont systemFontOfSize:45];
    scene.textColor=[UIColor colorWithRed:0.86 green:0.86 blue:0.86 alpha:1];
    scene.text=@"个";
    scene.textAlignment=NSTextAlignmentRight;
    [_splashView addSubview:scene];
    scene1=[[UILabel alloc]initWithFrame:CGRectMake( (self.window.bounds.size.width-(sceneSize.width+sceneSize1.width))/2+sceneSize.width, self.window.bounds.size.height/3+sceneSize.height-sceneSize1.height-3,sceneSize1.width, sceneSize1.height)];
    scene1.font=[UIFont systemFontOfSize:24];
    scene1.textColor=[UIColor colorWithRed:0.86 green:0.86 blue:0.86 alpha:1];
    scene1.text=@"不同的地点";
    scene1.textAlignment=NSTextAlignmentLeft;
    [_splashView addSubview:scene1];
    
    [self performSelector:@selector(scale) withObject:nil afterDelay:1.0f];
    [self performSelector:@selector(scale1) withObject:nil afterDelay:3.0f];

    return YES;
}
-(void)scale
{
    [UIView animateWithDuration:1.0f delay:0.0f options:UIViewAnimationOptionTransitionCurlUp animations:^{
        /*计算宽度*/
        /*位的宽高*/
        CGSize peopleSize = [@"560位" sizeWithFont:[UIFont systemFontOfSize:38] constrainedToSize:CGSizeMake(MAXFLOAT, 50)];
        CGSize peopleSize1 = [@"童鞋" sizeWithFont:[UIFont systemFontOfSize:24] constrainedToSize:CGSizeMake(MAXFLOAT, 50)];
        CGSize sceneSize = [@"230个" sizeWithFont:[UIFont systemFontOfSize:45] constrainedToSize:CGSizeMake(MAXFLOAT, 50)];
        CGSize sceneSize1 = [@"不同的地点" sizeWithFont:[UIFont systemFontOfSize:24] constrainedToSize:CGSizeMake(MAXFLOAT, 50)];
         people.text=@"560位";
        scene.text=@"230个";
        people.frame=CGRectMake( (self.window.bounds.size.width-(peopleSize.width+peopleSize1.width))/2, self.window.bounds.size.height/40*7,peopleSize.width,peopleSize.height);
        people1.frame=CGRectMake( (self.window.bounds.size.width-(peopleSize.width+peopleSize1.width))/2+peopleSize.width, self.window.bounds.size.height/40*7+peopleSize.height-peopleSize1.height-3,peopleSize1.width,peopleSize1.height);
        scene.frame=CGRectMake( (self.window.bounds.size.width-(sceneSize.width+sceneSize1.width))/2, self.window.bounds.size.height/3,sceneSize.width, sceneSize.height);
        scene1.frame=CGRectMake( (self.window.bounds.size.width-(sceneSize.width+sceneSize1.width))/2+sceneSize.width, self.window.bounds.size.height/3+sceneSize.height-sceneSize1.height-3,sceneSize1.width, sceneSize1.height);
        
         } completion:^(BOOL finished)
     {
      //  [_splashView removeFromSuperview];
    }];
    
}
-(void)scale1
{
    [UIView animateWithDuration:1.0f delay:0.0f options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
         [_splashView removeFromSuperview];
    } completion:^(BOOL finished)
     {
        
     }];
    
}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
