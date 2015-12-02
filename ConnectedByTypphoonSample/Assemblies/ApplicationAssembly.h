//
// Created by Adam Borek on 30.11.2015.
// Copyright (c) 2015 Adam Borek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TyphoonAssembly.h"

@protocol APIConnection;
@class StoryboardAssembly;

@interface ApplicationAssembly : TyphoonAssembly
@property(nonatomic, strong) StoryboardAssembly *storyboardAssembly;

- (id<APIConnection>)apiConnection;
@end