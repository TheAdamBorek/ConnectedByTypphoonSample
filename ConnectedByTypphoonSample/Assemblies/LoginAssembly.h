//
// Created by Adam Borek on 02.12.2015.
// Copyright (c) 2015 Adam Borek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TyphoonAssembly.h"

@class LoginViewController;
@class StoryboardAssembly;
@class ApplicationAssembly;


@interface LoginAssembly : TyphoonAssembly
@property(nonatomic, strong) StoryboardAssembly *storyboardAssembly;
@property(nonatomic, strong) ApplicationAssembly *applicationAssembly;

- (LoginViewController *)loginViewController;

@end