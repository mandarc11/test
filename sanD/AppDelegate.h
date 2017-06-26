//
//  AppDelegate.h
//  sanD
//
//  Created by Student P_08 on 15/06/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

{
    //Delare the instance Variable::
    float redval,greenval,blueval;
}
@property (strong, nonatomic) UIWindow *window;
@property(strong, nonatomic)UIViewController *mainViewController;
//Decare The Sliders::
@property UISlider *redslider;
@property UISlider *greenslider;
@property UISlider *blueslider;

//Decalre The Labels::
@property UILabel *redLabel;
@property UILabel *greenLabel;
@property UILabel *blueLable;



@end

