//
//  AppDelegate.h
//  ConnectedByTypphoonSample
//
//  Created by Adam Borek on 30.11.2015.
//  Copyright (c) 2015 Adam Borek. All rights reserved.
//


#import <UIKit/UIKit.h>

@class SomeObject;


@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (nonatomic, strong) SomeObject *someObjectNeededForSomething;
@property (nonatomic, strong) UIWindow *window;
@end
