//
//  AppDelegate.m
//  sanD
//
//  Created by Student P_08 on 15/06/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //Initialize to Zero::
    redval=0;
    greenval=0;
    blueval=0;
    self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor=[UIColor whiteColor];
    self.mainViewController=[[UIViewController alloc]init];
    self.window.rootViewController=self.mainViewController;
    
    self.redLabel=[[UILabel alloc]initWithFrame:CGRectMake(30, 50, 80, 60)];
    self.redLabel.backgroundColor=[UIColor redColor];
    
    self.greenLabel=[[UILabel alloc]initWithFrame:CGRectMake(30, 150, 80, 50)];
    self.greenLabel.backgroundColor=[UIColor greenColor];
    
    self.blueLable=[[UILabel alloc]initWithFrame:CGRectMake(30, 250, 80, 50)];
    self.blueLable.backgroundColor=[UIColor blueColor];
    
    self.redslider=[[UISlider alloc]initWithFrame:CGRectMake(130, 60, 250, 50)];
    self.redslider.thumbTintColor=[UIColor redColor];
      [self.redslider addTarget:self action:@selector(colorOperation:) forControlEvents:UIControlEventValueChanged];
    
    self.greenslider=[[UISlider alloc]initWithFrame:CGRectMake(130, 150, 250, 50)];
    self.greenslider.thumbTintColor=[UIColor greenColor];
    [self.greenslider addTarget:self action:@selector(colorOperation:) forControlEvents:UIControlEventValueChanged];
    
    self.blueslider=[[UISlider alloc]initWithFrame:CGRectMake(130, 250, 250, 50)];
    self.blueslider.thumbTintColor=[UIColor blueColor];
    [self.blueslider addTarget:self action:@selector(colorOperation:) forControlEvents:UIControlEventValueChanged];
    
    //Add all Controls in mainView
    [self.mainViewController.view addSubview:_redLabel];
    [self.mainViewController.view addSubview:_greenLabel];
    [self.mainViewController.view addSubview:_blueLable];
    
    [self.mainViewController.view addSubview:_redslider];
    [self.mainViewController.view addSubview:_greenslider];
    [self.mainViewController.view addSubview:_blueslider];
    [self.window makeKeyAndVisible];

    return YES;
}
-(void)colorOperation:(UISlider *)sender
{
    UISlider *localSalider=sender;
    if (self.redslider==localSalider) {
        redval=localSalider.value;
    }
    else if(self.greenslider==localSalider){
        greenval=localSalider.value;

    }
    else
    {
        blueval=localSalider.value;
    }
       self.mainViewController.view.backgroundColor=[UIColor colorWithRed:redval green:greenval blue:blueval alpha:1];
}


/*
-(void)colorWithRed:(UISlider *)sender
{
    UISlider *localSlider=sender;
    redval=localSlider.value;
    self.mainViewController.view.backgroundColor=[UIColor colorWithRed:redval green:greenval blue:blueval alpha:1];
    
}
-(void)colorWithGreen:(UISlider *)sender
{
    UISlider *localSlider=sender;
    greenval=localSlider.value;
    self.mainViewController.view.backgroundColor=[UIColor colorWithRed:redval green:greenval blue:blueval alpha:1];
    
}
-(void)colorWithBlue:(UISlider *)sender
{
    UISlider *localSlider=sender;
    blueval=localSlider.value;
    self.mainViewController.view.backgroundColor=[UIColor colorWithRed:redval green:greenval blue:blueval alpha:1];
}*/
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
