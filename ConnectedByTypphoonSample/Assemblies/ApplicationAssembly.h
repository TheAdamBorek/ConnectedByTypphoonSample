//
// Created by Adam Borek on 30.11.2015.
// Copyright (c) 2015 Adam Borek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TyphoonAssembly.h"

@protocol APIConnection;


@interface ApplicationAssembly : TyphoonAssembly
- (id<APIConnection>)apiConnection;
@end