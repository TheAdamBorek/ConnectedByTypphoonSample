//
//  LoginViewController.h
//  ConnectedByTypphoonSample
//
//  Created by Adam Borek on 30.11.2015.
//  Copyright (c) 2015 Adam Borek. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "LoginSystem.h"

@class LoginSystem;


@interface LoginViewController : UIViewController <LoginSystemDelegate>
@property(nonatomic, strong) LoginSystem *loginSystem;
@end
